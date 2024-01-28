//
//  main.swift
//  Swift Algorithm
//
//  Created by Seungwon Choi on 2024/01/28.
//

import Foundation

let input = Int(readLine()!)!
for i in 1...input {
    print(String(repeating: " ", count: input - i), terminator: "")
    print(String(repeating: "*", count: i))
}
