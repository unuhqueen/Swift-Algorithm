//
//  main.swift
//  Swift Algorithm
//
//  Created by Seungwon Choi on 2024/01/06.
//

import Foundation

let score = Int(readLine()!)!

if score >= 90 && score <= 100 {
    print("A")
} else if score >= 80 && score <= 89 {
    print("B")
} else if score >= 70 && score <= 79 {
    print("C")
} else if score >= 60 && score <= 69 {
    print("D")
} else {
    print("F")
}
