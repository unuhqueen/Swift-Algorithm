//
//  main.swift
//  Swift Algorithm
//
//  Created by Seungwon Choi on 2024/02/20.
//

import Foundation

var mods: Set<Int> = []

for _ in 1...10 {
    let input = Int(readLine()!)!
    mods.insert(input % 42)
}

print(mods.count)
