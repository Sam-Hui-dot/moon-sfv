import glob
import json
import os
import base64

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

def val_to_bare_item(v):
    if isinstance(v, bool):
        return f'SfBoolean({str(v).lower()})'
    elif isinstance(v, int):
        return f'SfInteger({v}L)'
    elif isinstance(v, float):
        return f'SfDecimal({v})'
    elif isinstance(v, str):
        return f'SfString("{escape_string(v)}")'
    elif isinstance(v, dict):
        t = v.get('__type')
        val = v.get('value')
        if t == 'token':
            return f'SfToken("{escape_string(val)}")'
        elif t == 'date':
            return f'SfDate({val}L)'
        elif t == 'displaystring':
            return f'SfDisplayString("{escape_string(val)}")'
        elif t == 'binary':
            b = base64.b32decode(val) if val else b''
            b64 = base64.b64encode(b).decode('ascii')
            return f'SfByteSequence(base64_decode("{b64}").unwrap())'
    raise ValueError(f'Unknown value: {v}')

def params_to_mbt(params):
    if not params:
        return '[]'
    res = []
    for p in params:
        k = escape_string(p[0])
        v = val_to_bare_item(p[1])
        res.append(f'param("{k}", {v})')
    return '[' + ', '.join(res) + ']'

def item_to_mbt(item_arr):
    bare = val_to_bare_item(item_arr[0])
    params = item_arr[1]
    if not params:
        return f'bare_item({bare})'
    params_str = params_to_mbt(params)
    return f'item({bare}, {params_str})'

def list_member_to_mbt(v):
    if isinstance(v[0], list): # inner list
        inner_items = [item_to_mbt(it) for it in v[0]]
        inner_params = params_to_mbt(v[1])
        inner_items_str = ', '.join(inner_items)
        return f'member_inner([{inner_items_str}], {inner_params})'
    else:
        return f'member_item({item_to_mbt(v)})'

def generate_file_tests(fpaths):
    out_lines = [
        '///| Conformance test vectors generated from httpwg/structured-field-tests',
        '///| BSD 3-Clause License - IETF Trust',
        ''
    ]
    count = 0
    for fpath in fpaths:
        fname = os.path.basename(fpath)
        with open(fpath, 'r', encoding='utf-8') as fp:
            data = json.load(fp)

        for i, tc in enumerate(data):
            count += 1
            can_fail = tc.get('can_fail', False)
            name = tc.get('name', f'{fname}_{i}')
            header_type = tc.get('header_type')
            raw = tc.get('raw', [])
            must_fail = tc.get('must_fail', False)
            canonical = tc.get('canonical')
            expected = tc.get('expected')

            test_name = f'httpwg: {fname[:-5]} - {name}'
            escaped_test_name = escape_string(test_name)

            out_lines.append('///|')
            out_lines.append(f'test "{escaped_test_name}" {{')

            raw_joined = ', '.join(raw)
            raw_str = escape_string(raw_joined)

            if canonical is not None:
                expected_canonical = canonical[0] if len(canonical) > 0 else ''
            else:
                expected_canonical = raw_joined

            escaped_canonical = escape_string(expected_canonical)

            if header_type == 'item':
                if must_fail:
                    out_lines.append(f'  expect_parse_item_error("{raw_str}")')
                else:
                    exp_mbt = item_to_mbt(expected)
                    out_lines.append(f'  let expected : Item = {exp_mbt}')
                    out_lines.append(f'  match parse_item("{raw_str}") {{')
                    out_lines.append('    Ok(parsed) => {')
                    out_lines.append('      assert_eq(parsed, expected)')
                    out_lines.append('      match serialize_item(parsed) {')
                    out_lines.append(f'        Ok(s) => assert_eq(s, "{escaped_canonical}")')
                    out_lines.append('        Err(_) => fail("expected canonical serialization")')
                    out_lines.append('      }')
                    out_lines.append('    }')
                    if can_fail:
                        out_lines.append('    Err(_) => ()')
                    else:
                        out_lines.append('    Err(_) => fail("expected item to parse")')
                    out_lines.append('  }')

            elif header_type == 'list':
                if must_fail:
                    out_lines.append(f'  expect_parse_list_error("{raw_str}")')
                else:
                    list_entries = [list_member_to_mbt(x) for x in expected]
                    exp_mbt = '[' + ', '.join(list_entries) + ']'
                    out_lines.append(f'  let expected : Array[ListMember] = {exp_mbt}')
                    out_lines.append(f'  match parse_list("{raw_str}") {{')
                    out_lines.append('    Ok(parsed) => {')
                    out_lines.append('      assert_eq(parsed, expected)')
                    out_lines.append('      match serialize_list(parsed) {')
                    out_lines.append(f'        Ok(s) => assert_eq(s, "{escaped_canonical}")')
                    out_lines.append('        Err(_) => fail("expected canonical list serialization")')
                    out_lines.append('      }')
                    out_lines.append('    }')
                    if can_fail:
                        out_lines.append('    Err(_) => ()')
                    else:
                        out_lines.append('    Err(_) => fail("expected list to parse")')
                    out_lines.append('  }')

            elif header_type == 'dictionary':
                if must_fail:
                    out_lines.append(f'  expect_parse_dict_error("{raw_str}")')
                else:
                    dict_entries = []
                    for k, v in expected:
                        k_esc = escape_string(k)
                        v_mbt = list_member_to_mbt(v)
                        dict_entries.append(f'dict_entry("{k_esc}", {v_mbt})')
                    exp_mbt = '[' + ', '.join(dict_entries) + ']'
                    out_lines.append(f'  let expected : Array[DictionaryMember] = {exp_mbt}')
                    out_lines.append(f'  match parse_dictionary("{raw_str}") {{')
                    out_lines.append('    Ok(parsed) => {')
                    out_lines.append('      assert_eq(parsed, expected)')
                    out_lines.append('      match serialize_dictionary(parsed) {')
                    out_lines.append(f'        Ok(s) => assert_eq(s, "{escaped_canonical}")')
                    out_lines.append('        Err(_) => fail("expected canonical dictionary serialization")')
                    out_lines.append('      }')
                    out_lines.append('    }')
                    if can_fail:
                        out_lines.append('    Err(_) => ()')
                    else:
                        out_lines.append('    Err(_) => fail("expected dictionary to parse")')
                    out_lines.append('  }')

            out_lines.append('}')
            out_lines.append('')
    return count, '\n'.join(out_lines)

def main():
    splits = {
        'conformance_bare_items_test.mbt': [
            'test-vectors/structured-field-tests/binary.json',
            'test-vectors/structured-field-tests/boolean.json',
            'test-vectors/structured-field-tests/date.json',
            'test-vectors/structured-field-tests/display-string.json',
            'test-vectors/structured-field-tests/number.json',
            'test-vectors/structured-field-tests/string.json',
            'test-vectors/structured-field-tests/token.json',
        ],
        'conformance_containers_test.mbt': [
            'test-vectors/structured-field-tests/item.json',
            'test-vectors/structured-field-tests/list.json',
            'test-vectors/structured-field-tests/listlist.json',
            'test-vectors/structured-field-tests/dictionary.json',
            'test-vectors/structured-field-tests/param-dict.json',
            'test-vectors/structured-field-tests/param-list.json',
            'test-vectors/structured-field-tests/param-listlist.json',
            'test-vectors/structured-field-tests/examples.json',
        ],
        'conformance_key_gen_test.mbt': [
            'test-vectors/structured-field-tests/key-generated.json',
        ],
        'conformance_number_gen_test.mbt': [
            'test-vectors/structured-field-tests/large-generated.json',
            'test-vectors/structured-field-tests/number-generated.json',
        ],
        'conformance_string_gen_test.mbt': [
            'test-vectors/structured-field-tests/string-generated.json',
        ],
        'conformance_token_gen_test.mbt': [
            'test-vectors/structured-field-tests/token-generated.json',
        ],
    }

    tot = 0
    for outfile, flist in splits.items():
        c, s = generate_file_tests(flist)
        tot += c
        with open(outfile, 'w', encoding='utf-8') as f:
            f.write(s)
        print(f'{outfile}: {c} cases')

    print(f'Total parsing conformance vectors: {tot}')

if __name__ == '__main__':
    main()
