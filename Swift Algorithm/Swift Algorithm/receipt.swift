//
//  main.swift
//  Swift Algorithm
//
//  Created by Seungwon Choi on 2024/01/19.
//

import Foundation

let sumOfPrice = Int(readLine()!)!
let numberOfItems = Int(readLine()!)!
var sumForCount = 0

for _ in 1...numberOfItems {
    let priceAndNumber = readLine()!.components(separatedBy: " ").map{Int($0)!}
    sumForCount = sumForCount + priceAndNumber[0] * priceAndNumber[1]
}

if sumForCount == sumOfPrice {
    print("Yes")
} else {
    print("No")
}
