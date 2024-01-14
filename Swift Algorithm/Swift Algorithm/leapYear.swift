//
//  main.swift
//  Swift Algorithm
//
//  Created by Seungwon Choi on 2024/01/14.
//

import Foundation

let year = Int(readLine()!)!

if (year % 4 == 0 && year % 100 != 0) || year % 400 == 0 {
    print("1")
} else {
    print("0")
}
