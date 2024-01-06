//
//  main.swift
//  Swift Algorithm
//
//  Created by Seungwon Choi on 2023/12/28.
//

import Foundation

let input1 = Int(readLine()!)!
let input2 = Int(readLine()!)!

let input1_100 = getHundredsPlace(input1)
let input1_10 = getTensPlace(input1)
let input1_1 = getOnesPlace(input1)

let input2_100 = getHundredsPlace(input2)
let input2_10 = getTensPlace(input2)
let input2_1 = getOnesPlace(input2)

let multiply_1 = input1 * input2_1
let multiply_10 = input1 * input2_10
let multiply_100 = input1 * input2_100

print(multiply_1)
print(multiply_10)
print(multiply_100)
print(multiply_1 + multiply_10 * 10 + multiply_100 * 100)

func getHundredsPlace(_ input: Int) -> Int {
    return input / 100
}

func getTensPlace(_ input: Int) -> Int {
    return (input / 10) % 10
}

func getOnesPlace(_ input: Int) -> Int {
    return input % 10
}
