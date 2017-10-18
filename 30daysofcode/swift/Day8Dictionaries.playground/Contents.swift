//: Playground - noun: a place where people can play

import UIKit

let phoneBookDict = ["sam": 99912222, "tom": 11122222, "harry": 12299933]
let queryList = ["sam", "edward", "harry"];

for name in queryList {
    if let phone = phoneBookDict[name] {
        print("\(name)=\(phone)")
    } else {
        print("Not found")
    }
}
