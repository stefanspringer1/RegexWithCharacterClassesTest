import RegexWithCharacterClasses

// note that the type annotation is not necessary:
let regex: Regex<Substring> = #regexWithCharacterClasses("[${LATIN_LETTERS}]")
print("123 hello!".replacing(regex, with: "x")) // "123 xxxxx!"
