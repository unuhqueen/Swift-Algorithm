//
//  main.swift
//  Swift Algorithm
//
//  Created by Seungwon Choi on 2024/02/20.
//

import Foundation

var inputs: Set<Int> = []

for _ in 1...28 {
    inputs.insert(Int(readLine()!)!)
}

for i in 1...30 {
    if !inputs.contains(i) {
        print(i)
    }
}
