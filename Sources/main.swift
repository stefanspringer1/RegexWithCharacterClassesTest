import RegexWithCharacterClasses

let regex: Regex<Substring> = #regexWithCharacterClasses("[${LATIN_LETTERS}]")
print("123 hello!".replacing(regex, with: "x")) // "123 xxxxx!"
