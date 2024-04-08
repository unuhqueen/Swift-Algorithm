//
//  main.swift
//  Swift Algorithm
//
//  Created by Seungwon Choi on 3/5/24.
//

import Foundation

/// Lienear Time: O(n)
func findNemo(_ arr: [String]) {
    for i in 0..<arr.count {
        if arr[i] == "nemo" {
            print("Found Him!")
        }
    }
}

/// Constant Time: O(1)
func constantTime(_ n: Int) -> Int {
    let result = n * n
    return result
}

/// Logarithmic Time: O(log n)
func logarithmicTime(_ N: Int) -> Int {
    var n = N
    var result = 0
    
    // 데이터가 2배로 증가하면 한 단계씩 늘어나는 알고리즘
    while n > 1 {
        n /= 2
        result += 1
    }
    return result
}

/// Quadratic Time: O(n^2)
func quadraticTime(_ n: Int) -> Int {
    var result = 0
    for i in 0..<n {
        for j in i..<n {
            result += 1
        }
    }
    return result
}

// Time: O(n^2)을 O(n)으로 줄이는 예시

/// Time: O(n^2), Space: O(1)
func commonItemsBrute(_ A: [Int], _ B: [Int]) -> Bool {
    // 인자 외에 따로 space를 사용하지 않으므로 Space: O(1)
    for i in 0..<A.count {
        for j in 0..<B.count {
            if A[i] == B[j] {
                return true
            }
        }
    }
    return false
}

/// Time: O(n), Space: O(n)
func commonItemsHash(_ A: [Int], _ B: [Int]) -> Bool {
    // 새로운 array를 생성하므로 Space: O(n)
    var hashA = [Int: Bool]()
    
    // O(n)
    for a in A {
        hashA[a] = true
    }
    
    // O(n)
    for b in B {
        // B의 원소 중에 hashA에 넣은 A의 원소와 같은 값이 있을 경우
        if hashA[b] == true {
            return true
        }
    }
    return false
}
