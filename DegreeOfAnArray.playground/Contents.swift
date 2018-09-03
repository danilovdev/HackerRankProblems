func findMinSubArrayWithDegree(_ array: [Int]) -> Int {
    var degree = 0
    let n = array.count
    var countTable = [Int: Int]()
    var left = [Int: Int]()
    var right = [Int: Int]()
    for i in 0..<n {
        let value = array[i]
        if let count = countTable[value] {
            countTable[value] = count + 1
        } else {
            countTable[value] = 1
            left[value] = i
        }
        right[value] = i
        degree = max(degree, countTable[value]!)
    }
    var result = n
    for key in countTable.keys {
        if degree == countTable[key] {
            let subArrayCount = right[key]! - left[key]! + 1
            result = min(result, subArrayCount)
        }
    }
    return result
}

findMinSubArrayWithDegree([1, 2, 1, 3, 1, 2, 2, 1, 2, 2]) // 9
findMinSubArrayWithDegree([1, 2, 2, 3, 1]) // 2
findMinSubArrayWithDegree([1, 2, 3, 4, 2, 2, 3]) // 5












