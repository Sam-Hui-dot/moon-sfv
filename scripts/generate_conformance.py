import glob
import json
import os

def escape_string(s):
    res = []
    for c in s:
        code = ord(c)
        if c == '\\':
            res.append('\\\\')
        elif c == '"':
            res.append('\\"')
        elif c == '\n':
            res.append('\\n')
        elif c == '\r':
            res.append('\\r')
        elif c == '\t':
            res.append('\\t')
        elif 0x20 <= code <= 0x7E:
            res.append(c)
        else:
            res.append(f'\\u{code:04x}')
    return ''.join(res)

def generate():
    files = sorted(glob.glob('test-vectors/structured-field-tests/*.json'))
    out_lines = [
        '///| Conformance test vectors generated from httpwg/structured-field-tests',
        '///| BSD 3-Clause License - IETF Trust',
        ''
    ]

    total_count = 0
    file_stats = {}

    for fpath in files:
        fname = os.path.basename(fpath)
        with open(fpath, 'r', encoding='utf-8') as f:
            data = json.load(f)

        file_stats[fname] = len(data)
        for i, tc in enumerate(data):
            total_count += 1
            name = tc.get('name', f'{fname}_{i}')
            header_type = tc.get('header_type')
            raw = tc.get('raw', [])
            must_fail = tc.get('must_fail', False)
            canonical = tc.get('canonical')

            test_name = f'httpwg: {fname[:-5]} - {name}'
            escaped_test_name = escape_string(test_name)

            out_lines.append('///|')
            out_lines.append(f'test "{escaped_test_name}" {{')

            if header_type == 'item':
                if len(raw) != 1 or must_fail:
                    if len(raw) == 1:
                        raw_str = escape_string(raw[0])
                        out_lines.append(f'  expect_parse_item_error("{raw_str}")')
                    else:
                        out_lines.append('  () // multiple lines for item must fail')
                else:
                    raw_str = escape_string(raw[0])
                    if canonical is not None and len(canonical) > 0:
                        can_str = escape_string(canonical[0])
                        out_lines.append(f'  match parse_item("{raw_str}") {{')
                        out_lines.append('    Ok(item) => match serialize_item(item) {')
                        out_lines.append(f'      Ok(s) => assert_eq(s, "{can_str}")')
                        out_lines.append('      Err(_) => fail("expected canonical serialization")')
                        out_lines.append('    }')
                        out_lines.append('    Err(_) => fail("expected item to parse")')
                        out_lines.append('  }')
                    else:
                        out_lines.append(f'  match parse_item("{raw_str}") {{')
                        out_lines.append('    Ok(_) => ()')
                        out_lines.append('    Err(_) => fail("expected item to parse")')
                        out_lines.append('  }')

            elif header_type == 'list':
                raw_joined = ', '.join(raw)
                if must_fail:
                    raw_str = escape_string(raw_joined)
                    out_lines.append(f'  expect_parse_list_error("{raw_str}")')
                else:
                    raw_str = escape_string(raw_joined)
                    if canonical is not None:
                        can_str = escape_string(canonical[0] if len(canonical) > 0 else '')
                        out_lines.append(f'  match parse_list("{raw_str}") {{')
                        out_lines.append('    Ok(l) => match serialize_list(l) {')
                        out_lines.append(f'      Ok(s) => assert_eq(s, "{can_str}")')
                        out_lines.append('      Err(_) => fail("expected canonical list serialization")')
                        out_lines.append('    }')
                        out_lines.append('    Err(_) => fail("expected list to parse")')
                        out_lines.append('  }')
                    else:
                        out_lines.append(f'  match parse_list("{raw_str}") {{')
                        out_lines.append('    Ok(_) => ()')
                        out_lines.append('    Err(_) => fail("expected list to parse")')
                        out_lines.append('  }')

            elif header_type == 'dictionary':
                raw_joined = ', '.join(raw)
                if must_fail:
                    raw_str = escape_string(raw_joined)
                    out_lines.append(f'  expect_parse_dict_error("{raw_str}")')
                else:
                    raw_str = escape_string(raw_joined)
                    if canonical is not None:
                        can_str = escape_string(canonical[0] if len(canonical) > 0 else '')
                        out_lines.append(f'  match parse_dictionary("{raw_str}") {{')
                        out_lines.append('    Ok(d) => match serialize_dictionary(d) {')
                        out_lines.append(f'      Ok(s) => assert_eq(s, "{can_str}")')
                        out_lines.append('      Err(_) => fail("expected canonical dictionary serialization")')
                        out_lines.append('    }')
                        out_lines.append('    Err(_) => fail("expected dictionary to parse")')
                        out_lines.append('  }')
                    else:
                        out_lines.append(f'  match parse_dictionary("{raw_str}") {{')
                        out_lines.append('    Ok(_) => ()')
                        out_lines.append('    Err(_) => fail("expected dictionary to parse")')
                        out_lines.append('  }')

            out_lines.append('}')
            out_lines.append('')

    with open('conformance_test.mbt', 'w', encoding='utf-8') as f:
        f.write('\n'.join(out_lines))

    print(f'Generated conformance_test.mbt with {total_count} test cases.')

generate()
