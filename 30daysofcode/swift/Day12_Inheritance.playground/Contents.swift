//: Playground - noun: a place where people can play

import Foundation

class Student: Person {
    
    var scores: [Int]!
    
    init(firstName: String, lastName: String, identification: Int, scores: [Int]) {
        super.init(firstNameString: firstName, lastNameString: lastName, identificationNumber: identification)
        self.scores = scores
    }
    
    func calculate() -> String {
        var sum: Int = 0
        for i in 0..<self.scores.count {
            sum += self.scores[i]
        }
        let average = Int(sum / self.scores.count)
        if (average >= 90 && average <= 100) {
            return "O";
        } else if (average >= 80 && average < 90) {
            return "E";
        } else if (average >= 70 && average < 80) {
            return "A";
        } else if (average > 55 && average < 70) {
            return "P";
        } else if (average > 40 && average < 55) {
            return "D";
        } else {
            return "T";
        }
        
    }
    
}
