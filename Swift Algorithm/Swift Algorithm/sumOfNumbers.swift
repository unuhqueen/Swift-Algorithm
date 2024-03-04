//
//  main.swift
//  Swift Algorithm
//
//  Created by Seungwon Choi on 3/4/24.
//

import Foundation

let numOfInput = Int(readLine()!)!
let nums = readLine()!

var sum = 0

for i in nums {
    sum += Int(String(i))!
}

print(sum)
