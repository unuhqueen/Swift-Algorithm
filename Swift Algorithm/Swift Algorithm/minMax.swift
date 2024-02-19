//
//  main.swift
//  Swift Algorithm
//
//  Created by Seungwon Choi on 2024/02/04.
//

import Foundation

let numberOfInputs = Int(readLine()!)!
let inputs = readLine()!.split(separator: " ").map{ Int($0)! }

print("\(inputs.min()!) \(inputs.max()!)")
