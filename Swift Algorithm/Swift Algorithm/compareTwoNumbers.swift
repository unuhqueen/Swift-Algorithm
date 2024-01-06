//
//  main.swift
//  Swift Algorithm
//
//  Created by Seungwon Choi on 2024/01/06.
//

import Foundation

let inputs = readLine()!.components(separatedBy: " ")

let input1 = Int(inputs[0])!
let input2 = Int(inputs[1])!

if input1 > input2 {
    print(">")
} else if input1 < input2 {
    print("<")
} else {
    print("==")
}
