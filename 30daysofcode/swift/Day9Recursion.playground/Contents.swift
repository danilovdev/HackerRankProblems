//: Playground - noun: a place where people can play

import Foundation

func factorial(_ n: Int) -> Int {
    if (n <= 1) {
        return 1
    }
    let result = n * factorial(n - 1)
    return result
}

var result = factorial(3)
print(result)

result = factorial(4)
print(result)

result = factorial(5)
print(result)

result = factorial(6)
print(result)

result = factorial(7)
print(result)
