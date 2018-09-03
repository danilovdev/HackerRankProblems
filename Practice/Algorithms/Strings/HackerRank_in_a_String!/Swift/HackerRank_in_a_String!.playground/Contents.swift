func hackerrankInString(s: String) -> String {
    var str = "hackerrank"
    for ch in s {
        if let index = str.index(of: ch), index.encodedOffset == 0 {
            str.remove(at: index)
        }
    }
    return str.count == 0 ? "YES" : "NO"
}

hackerrankInString(s: "hhaacckkekraraannk")
hackerrankInString(s: "rhbaasdndfsdskgbfefdbrsdfhuyatrjtcrtyytktjjt")
