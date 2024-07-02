import RegexWithCharacterClasses

do {
    // note that the type annotation is not necessary:
    let regex: any RegexComponent = #regexWithCharacterClassesAnd1Group("[${LATIN_LETTERS}&auml;]")
    print("äh 123 hello!".replacing(regex, with: "x")) // "xx 123 xxxxx!"
}

do {
    // note that the type annotation is not necessary:
    let regex: any RegexComponent = #regexWithCharacterClassesAnd1Group("[${COMBINING}]").matchingSemantics(.unicodeScalar)
    print("a\u{0307}".replacing(regex, with: "x")) // "ax"
}
