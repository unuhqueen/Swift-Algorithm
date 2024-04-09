//
//  main.swift
//  Swift Algorithm
//
//  Created by Seungwon Choi on 4/8/24.
//

import Foundation

// Big-O of get and set

// get(4) -> O(1)
// set(5, "b") -> O(1)

// --------------------------

// Big-O of insert

// original: ["a", "c", "d"]
// copy up: ["a",  , "c", "d"]
// insert: ["a", "b", "c", "d"]

// Time: O(n)
// 왜냐하면 최악의 경우 모든 요소를 shift해야 하기 때문

// --------------------------

// Big-O of delete

// original: ["a", "b", "c", "d"]
// copy: ["a", "c", "d"]

// Time: O(n)
// 왜냐하면 최악의 경우 모든 요소를 shift해야 하기 때문

// --------------------------

// Big-O of growing the size of array (추가 append)

// original: ["a", "b", "c", "d"]
// create x 2: ["", "", "", "", "", "", "", ""]
// copy: ["a", "b", "c", "d", "", "", "", ""]
// old > new: ["a", "b", "c", "d", "", "", "", ""]
// insert: ["a", "b", "c", "d", "e", "", "", ""]

// Time: O(n)
// array의 길이(n)만큼 storage를 늘리기 때문
