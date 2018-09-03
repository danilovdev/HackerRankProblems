import Foundation

func separateNumbers(s: String) {
    guard s.count > 1 else {
        print("NO")
        return
    }
    for i in 1...(s.count / 2) {
        let index0 = s.index(s.startIndex, offsetBy: 0)
        let index1 = s.index(s.startIndex, offsetBy: i)
        let n1 = s[index0..<index1]
        var n1Str = n1
        guard var num = Int(n1Str) else {
            print("NO")
            return
        }
        while n1Str.count < s.count {
            num += 1
            n1Str += String(num)
        }
        if n1Str == s {
            print("YES \(n1)")
            return
        }
    }
    print("NO")
}

separateNumbers(s: "1234")
separateNumbers(s: "91011")
separateNumbers(s: "99100")
separateNumbers(s: "101103")
separateNumbers(s: "010203")
separateNumbers(s: "13")
separateNumbers(s: "1")
