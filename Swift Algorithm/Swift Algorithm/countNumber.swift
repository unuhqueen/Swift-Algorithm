//
//  main.swift
//  Swift Algorithm
//
//  Created by Seungwon Choi on 2024/02/04.
//

import Foundation

var sum = 0

let numberOfInputs = Int(readLine()!)!
let numbers = readLine()!.split(separator: " ").map{Int($0)!}
let numberToFind = Int(readLine()!)!

for i in 0...numberOfInputs - 1 {
    if numbers[i] == numberToFind {
        sum += 1
    }
}

print(sum)
