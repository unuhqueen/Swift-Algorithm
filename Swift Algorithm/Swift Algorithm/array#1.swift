//
//  main.swift
//  Swift Algorithm
//
//  Created by Seungwon Choi on 4/9/24.
//

import Foundation

/*
 Rotate array to right N times.
 https://app.codility.com/programmers/lessons/2-arrays/cyclic_rotation/
 
 For example, given

     A = [3, 8, 9, 7, 6]
     K = 3
 the function should return [9, 7, 6, 3, 8]. Three rotations were made:

     [3, 8, 9, 7, 6] -> [6, 3, 8, 9, 7]
     [6, 3, 8, 9, 7] -> [7, 6, 3, 8, 9]
     [7, 6, 3, 8, 9] -> [9, 7, 6, 3, 8]

 */

func solution(A: [Int], K: Int) -> [Int] {
    // do your work here...
    var intArray = A
    
//    Time: O(n^2)
    
//    for _ in 0..<K { // O(n)
//        let lastElement = intArray.last! // O(1)
//        intArray.remove(at: A.count - 1) // O(n)
//        intArray.insert(lastElement, at: 0) // O(n)
//    }
    
//    Time: O(n)
//    
//    let subArray = intArray[intArray.count - K..<intArray.count] // O(1)
//    intArray.removeSubrange(intArray.count - K..<intArray.count) // O(n)
//    intArray.insert(contentsOf: subArray, at: 0) // O(n+n) = O(n)
//    
//    return intArray
    
    // Time: O(1)
    
    let rotation = K % A.count
    if rotation == 0 {
        return A
    }
    
    let right = A[0..<(A.count - rotation)]
    let left = A[(A.count - rotation)..<A.count]

    return Array(left + right)
}

print(solution(A: [1, 2, 3, 4, 5], K: 1)) // 5 1 2 3 4
print(solution(A: [1, 2, 3, 4, 5], K: 2)) // 4 5 1 2 3
print(solution(A: [1, 2, 3, 4, 5], K: 3)) // 3 4 5 1 2

print(solution(A: [3, 8, 9, 7, 6], K: 3)) // [9, 7, 6, 3, 8]
