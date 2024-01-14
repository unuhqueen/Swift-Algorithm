//
//  main.swift
//  Swift Algorithm
//
//  Created by Seungwon Choi on 2024/01/14.
//

import Foundation

let hour = readLine()!.components(separatedBy: " ")

let h = Int(hour[0])!
let m = Int(hour[1])!

if h == 0 {
    if m >= 45 {
        print("\(h) \(m - 45)")
    } else {
        print("23 \(m + 15)")
    }
} else {
    if m >= 45 {
        print("\(h) \(m - 45)")
    } else {
        print("\(h - 1) \(m + 15)")
    }
}
