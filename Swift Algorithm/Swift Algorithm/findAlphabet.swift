//
//  main.swift
//  Swift Algorithm
//
//  Created by Seungwon Choi on 3/5/24.
//

import Foundation

let input = Array(readLine()!)

let a = Character("a").asciiValue!
let z = Character("z").asciiValue!

for i in a...z {
    if input.contains(Character(UnicodeScalar(i))) {
        print(input.firstIndex(of: Character(UnicodeScalar(i)))!, terminator: " ")
    } else {
        print("-1", terminator: " ")
    }
}
