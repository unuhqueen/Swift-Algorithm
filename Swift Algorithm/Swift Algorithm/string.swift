//
//  main.swift
//  Swift Algorithm
//
//  Created by Seungwon Choi on 2/26/24.
//

import Foundation

let stringInput = readLine()!
let numberInput = Int(readLine()!)!

print(stringInput[stringInput.index(stringInput.startIndex, offsetBy: numberInput - 1)])
