//
//  main.swift
//  Swift Algorithm
//
//  Created by Seungwon Choi on 2024/01/14.
//

import Foundation

let currentTime = readLine()!.components(separatedBy: " ")
let cookTime = Int(readLine()!)!

let currentHour = Int(currentTime[0])!
let currentMinute = Int(currentTime[1])!

let cookHour = cookTime / 60
let cookMinute = cookTime % 60

var sumHour = currentHour + cookHour
var sumMinute = currentMinute + cookMinute

if sumMinute >= 60 {
    sumMinute = sumMinute - 60
    sumHour = sumHour + 1
}

if sumHour >= 24 {
    sumHour = sumHour - 24
}

print("\(sumHour) \(sumMinute)")
