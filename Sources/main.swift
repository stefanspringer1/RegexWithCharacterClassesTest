import RegexWithCharacterClasses

do {
    // note that the type annotation is not necessary:
    let regex: any RegexComponent = #regexWithCharacterClasses("[${LATIN_LETTERS}]")
    print("123 hello!".replacing(regex, with: "x")) // "123 xxxxx!"
}

do {
    // note that the type annotation is not necessary:
    let regex: any RegexComponent = #regexWithCharacterClasses("[${COMBINING}]", matchingSemantics: .unicodeScalar)
    print("a\u{0307}".replacing(regex, with: "x")) // "ax"
}
