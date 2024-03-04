//
//  main.swift
//  Swift Algorithm
//
//  Created by Seungwon Choi on 3/5/24.
//

import Foundation

let numOfInputs = Int(readLine()!)!

for _ in 0..<numOfInputs {
    let inputs = readLine()!.split(separator: " ")
    for i in String(inputs[1]) {
        print(String(repeating: i, count: Int(inputs[0])!), terminator: "")
    }
    print("")
}
