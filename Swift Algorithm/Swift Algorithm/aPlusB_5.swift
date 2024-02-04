//
//  main.swift
//  Swift Algorithm
//
//  Created by Seungwon Choi on 2024/02/04.
//

import Foundation

while true {
    let inputs = readLine()!.components(separatedBy: " ").map{Int($0)!}
    if inputs[0] == 0 && inputs[1] == 0 {
        break
    } else {
        print(inputs[0] + inputs[1])
    }
}
