//
//  main.swift
//  Swift Algorithm
//
//  Created by Seungwon Choi on 2024/01/28.
//

import Foundation

let numberOfTestCase = Int(readLine()!)!
for i in 1...numberOfTestCase {
    let inputs = readLine()!.components(separatedBy: " ").map{Int($0)!}
    print("Case #\(i): \(inputs[0]) + \(inputs[1]) = \(inputs[0] + inputs[1])")
}
