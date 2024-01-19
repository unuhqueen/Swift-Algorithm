//
//  main.swift
//  Swift Algorithm
//
//  Created by Seungwon Choi on 2024/01/14.
//

import Foundation
let diceNumbers = readLine()!.components(separatedBy: " ")

let first = Int(diceNumbers[0])!
let second = Int(diceNumbers[1])!
let third = Int(diceNumbers[2])!

if (first == second) && (second == third) {
    print(10000 + first * 1000)
} else if (first == second) && (second != third) {
    print(1000 + first * 100)
} else if (first == third) && (first != second) {
    print(1000 + first * 100)
} else if (second == third) && (first != second) {
    print(1000 + second * 100)
} else {
    if (first >= second) && (first >= third) {
        print(first * 100)
    } else if (second >= third) && (second >= first) {
        print(second * 100)
    } else {
        print(third * 100)
    }
}
