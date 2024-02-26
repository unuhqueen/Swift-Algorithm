//
//  main.swift
//  Swift Algorithm
//
//  Created by Seungwon Choi on 2/22/24.
//

import Foundation

let inputs = readLine()!.split(separator: " ").map{ Int($0)! }
var baskets = [Int](1...inputs[0])

for _ in 1...inputs[1] {
    var swapScope = readLine()!.split(separator: " ").map{ Int($0)! }
    var start = swapScope[0] - 1, end = swapScope[1] - 1
    baskets.replaceSubrange(start...end, with: baskets[start...end].reversed())
}

baskets.forEach{ print($0, terminator: " ") }
