//
//  main.swift
//  Swift Algorithm
//
//  Created by Seungwon Choi on 2024/02/20.
//

import Foundation

let inputs = readLine()!.split(separator: " ").map{ Int($0)! }
var baskets = [Int](1...inputs[0])

for _ in 1...inputs[1] {
    let inputs = readLine()!.split(separator: " ").map{ Int($0)! }
    let first = inputs[0] - 1, second = inputs[1] - 1
    baskets.swapAt(first, second)
}

baskets.forEach { print($0, terminator: " ") }
