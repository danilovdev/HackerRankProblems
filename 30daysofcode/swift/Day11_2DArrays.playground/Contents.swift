//: Playground - noun: a place where people can play

import Foundation

var a = Array(repeating: Array(repeating: 0, count: 6), count: 6)

for i in 0..<6 {
    for j in 0..<6 {
        a[i][j] = -9 + Int(arc4random_uniform(19))
        print("\(a[i][j]) ", terminator: "")
    }
    print()
}

var maxSum = 0

for i in 0..<4 {
    for j in 0..<4 {
        var currentSum = a[i][j]
        currentSum += a[i][j + 1]
        currentSum += a[i][j + 2]
        
        currentSum += a[i + 1][j + 1]
        
        currentSum += a[i + 2][j]
        currentSum += a[i + 2][j + 1]
        currentSum += a[i + 2][j + 2]
        
        if (currentSum > maxSum) {
            maxSum = currentSum
        }
    }
}

print(maxSum)

