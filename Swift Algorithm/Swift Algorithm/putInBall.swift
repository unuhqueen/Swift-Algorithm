//
//  main.swift
//  Swift Algorithm
//
//  Created by Seungwon Choi on 2024/02/20.
//

import Foundation

let inputs = readLine()!.split(separator: " ").map{Int($0)!}
var buckets = [Int](repeating: 0, count: inputs[0])

for _ in 1...inputs[1] {
    let inputs = readLine()!.split(separator: " ").map{Int($0)!}
    let start = inputs[0], end = inputs[1], ball = inputs[2]
    buckets.replaceSubrange(start - 1...end - 1,
                            with: [Int](repeating: ball, count: end - start + 1))
}

buckets.forEach{ print($0, terminator: " ") }
