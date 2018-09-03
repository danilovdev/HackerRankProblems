import Foundation

func pangrams(s: String) -> String {
    let str = s.lowercased().filter { $0 != " " }
    var result = Set<Character>()
    for ch in str {
        result.insert(ch)
    }
    return result.count == 26 ? "pangram" : "not pangram"
}

pangrams(s: "We promptly judged antique ivory buckles for the next prize")
pangrams(s: "We promptly judged antique ivory buckles for the prize")
