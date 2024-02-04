//
//  main.swift
//  Swift Algorithm
//
//  Created by Seungwon Choi on 2024/02/04.
//

import Foundation

let nAndX = readLine()!.split(separator: " ").map{ Int($0)! }
let numbers = readLine()!.split(separator: " ").map{ Int($0)! }

print(numbers.filter{ $0 < nAndX[1] }.map{ "\($0)" }.joined(separator: " "))
