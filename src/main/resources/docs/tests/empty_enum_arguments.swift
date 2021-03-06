//#Patterns: empty_enum_arguments

//#Issue: {"severity": "Info", "line": 10, "patternId": "empty_enum_arguments"}
//#Issue: {"severity": "Info", "line": 14, "patternId": "empty_enum_arguments"}
//#Issue: {"severity": "Info", "line": 18, "patternId": "empty_enum_arguments"}
//#Issue: {"severity": "Info", "line": 18, "patternId": "empty_enum_arguments"}
//#Issue: {"severity": "Info", "line": 22, "patternId": "empty_enum_arguments"}

    switch foo {
        case .bar(_): break
    }

    switch foo {
        case .bar(): break
    }

    switch foo {
        case .bar(_), .bar2↓(_): break
    }

    switch foo {
        case .bar() where method() > 2: break
    }
