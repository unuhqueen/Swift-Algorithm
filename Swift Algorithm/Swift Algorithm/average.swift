//
//  main.swift
//  Swift Algorithm
//
//  Created by Seungwon Choi on 2/26/24.
//

import Foundation

let numberOfInputs = Int(readLine()!)!
var scores = readLine()!.split(separator: " ").map{ Double($0)! }

let max = scores.max()!
scores = scores.map{ $0 / max * 100 }

var sum: Double = 0
for i in 0..<scores.count {
    sum += scores[i]
}

print(sum / Double(scores.count))
