//
//  main.swift
//  Swift Algorithm
//
//  Created by Seungwon Choi on 2023/12/28.
//

import Foundation

let inputs = readLine()!.components(separatedBy: " ")

let a = Int(inputs[0])!
let b = Int(inputs[1])!
let c = Int(inputs[2])!

print(String((a + b) % c))
print(String(((a % c) + (b % c)) % c))
print(String((a * b) % c))
print(String(((a % c) * (b % c)) % c))
