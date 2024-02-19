//
//  main.swift
//  Swift Algorithm
//
//  Created by Seungwon Choi on 2024/02/20.
//

import Foundation

var numArray = [Int]()

for _ in 1...9 {
    let input = Int(readLine()!)!
    numArray.append(input)
}

print(numArray.max()!)
print(numArray.firstIndex(of: numArray.max()!)! + 1)
