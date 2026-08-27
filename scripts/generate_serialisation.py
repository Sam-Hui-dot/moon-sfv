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
            byte_arr = ', '.join(f'({b_val} : Byte)' for b_val in b)
            return f'SfByteSequence(Bytes::from_array([{byte_arr}]))'
    raise ValueError(f'Unknown value: {v}')

def params_to_mbt(params):
    res = []
    for p in params:
        k = escape_string(p[0])
        v = val_to_bare_item(p[1])
        res.append(f'{{ key: "{k}", value: {v} }}')
    return '[' + ', '.join(res) + ']'

def item_to_mbt(item_arr):
    bare = val_to_bare_item(item_arr[0])
    params = params_to_mbt(item_arr[1])
    return f'{{ value: {bare}, parameters: {params} }}'

def generate_serialisation():
    files = sorted(glob.glob('test-vectors/structured-field-tests/serialisation-tests/*.json'))
    out_lines = [
        '///| Serialisation test vectors generated from httpwg/structured-field-tests/serialisation-tests',
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
            expected = tc.get('expected')
            must_fail = tc.get('must_fail', False)
            canonical = tc.get('canonical')

            test_name = f'httpwg-ser: {fname[:-5]} - {name}'
            escaped_test_name = escape_string(test_name)

            out_lines.append('///|')
            out_lines.append(f'test "{escaped_test_name}" {{')

            if header_type == 'item':
                item_code = item_to_mbt(expected)
                if must_fail:
                    out_lines.append(f'  let it : Item = {item_code}')
                    out_lines.append('  match serialize_item(it) {')
                    out_lines.append('    Ok(_) => fail("expected serialize to fail")')
                    out_lines.append('    Err(_) => ()')
                    out_lines.append('  }')
                else:
                    can_str = escape_string(canonical[0])
                    out_lines.append(f'  let it : Item = {item_code}')
                    out_lines.append('  match serialize_item(it) {')
                    out_lines.append(f'    Ok(s) => assert_eq(s, "{can_str}")')
                    out_lines.append('    Err(_) => fail("expected serialize to succeed")')
                    out_lines.append('  }')

            elif header_type == 'dictionary':
                dict_entries = []
                for k, v in expected:
                    k_esc = escape_string(k)
                    if isinstance(v[0], list):
                        inner_items = [f'Item({item_to_mbt(it)})' for it in v[0]]
                        inner_params = params_to_mbt(v[1])
                        val_code = f'ListMember::InnerList({{ items: [{", ".join(inner_items)}], parameters: {inner_params} }})'
                    else:
                        val_code = f'ListMember::Item({item_to_mbt(v)})'
                    dict_entries.append(f'{{ key: "{k_esc}", value: {val_code} }}')

                dict_code = '[' + ', '.join(dict_entries) + ']'
                if must_fail:
                    out_lines.append(f'  let d : Array[DictionaryMember] = {dict_code}')
                    out_lines.append('  match serialize_dictionary(d) {')
                    out_lines.append('    Ok(_) => fail("expected serialize to fail")')
                    out_lines.append('    Err(_) => ()')
                    out_lines.append('  }')
                else:
                    can_str = escape_string(canonical[0] if canonical else '')
                    out_lines.append(f'  let d : Array[DictionaryMember] = {dict_code}')
                    out_lines.append('  match serialize_dictionary(d) {')
                    out_lines.append(f'    Ok(s) => assert_eq(s, "{can_str}")')
                    out_lines.append('    Err(_) => fail("expected serialize to succeed")')
                    out_lines.append('  }')

            elif header_type == 'list':
                list_entries = []
                for v in expected:
                    if isinstance(v[0], list):
                        inner_items = [f'Item({item_to_mbt(it)})' for it in v[0]]
                        inner_params = params_to_mbt(v[1])
                        val_code = f'ListMember::InnerList({{ items: [{", ".join(inner_items)}], parameters: {inner_params} }})'
                    else:
                        val_code = f'ListMember::Item({item_to_mbt(v)})'
                    list_entries.append(val_code)

                list_code = '[' + ', '.join(list_entries) + ']'
                if must_fail:
                    out_lines.append(f'  let l : Array[ListMember] = {list_code}')
                    out_lines.append('  match serialize_list(l) {')
                    out_lines.append('    Ok(_) => fail("expected serialize to fail")')
                    out_lines.append('    Err(_) => ()')
                    out_lines.append('  }')
                else:
                    can_str = escape_string(canonical[0] if canonical else '')
                    out_lines.append(f'  let l : Array[ListMember] = {list_code}')
                    out_lines.append('  match serialize_list(l) {')
                    out_lines.append(f'    Ok(s) => assert_eq(s, "{can_str}")')
                    out_lines.append('    Err(_) => fail("expected serialize to succeed")')
                    out_lines.append('  }')

            out_lines.append('}')
            out_lines.append('')

    with open('serialisation_test.mbt', 'w', encoding='utf-8') as f:
        f.write('\n'.join(out_lines))

    print(f'Generated serialisation_test.mbt with {total_count} test cases.')

generate_serialisation()
