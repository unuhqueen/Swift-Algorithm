//
//  main.swift
//  Swift Algorithm
//
//  Created by Seungwon Choi on 2024/02/04.
//

import Foundation

while let inputs = readLine()?.components(separatedBy: " ").map({Int($0)!}) {
    print(inputs[0] + inputs[1])
}
