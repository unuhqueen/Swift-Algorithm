//
//  main.swift
//  Swift Algorithm
//
//  Created by Seungwon Choi on 2024/01/19.
//

import Foundation

let numberOfInputs = Int(readLine()!)!
var testCaseInputArray = [Int]()

for _ in 1...numberOfInputs {
    let testCaseInput = readLine()!.components(separatedBy: " ")
    testCaseInputArray.append(Int(testCaseInput[0])! + Int(testCaseInput[1])!)
}

for i in 0...numberOfInputs - 1 {
    print(testCaseInputArray[i])
}
