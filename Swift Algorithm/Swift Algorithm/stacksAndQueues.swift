//
//  main.swift
//  Swift Algorithm
//
//  Created by Seungwon Choi on 5/10/24.
//

import Foundation

class Stack<T> {
    private var array: [T] = []
    
    /// Time: O(1), 그러나 resize가 필요한 경우 O(n)
    func push(_ item: T) {
        array.append(item)
    }
    
    /// Time: O(1)
    func pop() -> T? {
        array.popLast()
    }
    
    func peek() -> T? {
        array.last
    }
    
    var isEmpty: Bool {
        array.isEmpty
    }
    
    var count: Int {
        array.count
    }
}

/// Struct는 값 타입이라 인스턴스 메서드를 통해 내부 값(array)를 수정할 수 없기 때문에 mutating이 필요. 따라서 보통 class를 사용함.
struct StackStruct<T> {
    fileprivate var array = [T]()
    
    mutating func push(_ item: T) {
        array.append(item)
    }
    
    mutating func pop() -> T? {
        array.popLast()
    }
    
    var peek: T? {
        array.last
    }
    
    var isEmpty: Bool {
        array.isEmpty
    }
    
    var count: Int {
        array.count
    }
}

class Queue<T> {
    private var array: [T] = []
    
    /// Time: O(1)
    func enqueue(_ item: T) {
        array.append(item)
    }
    
    /// Time: O(n)
    func dequeue() -> T? {
        if isEmpty {
            return nil
        } else {
            return array.removeFirst()
        }
    }
    
    var isEmpty: Bool {
        return array.isEmpty
    }
    
    var count: Int {
        return array.count
    }
    
    func peek() -> T? {
        return array.first
    }
}

struct QueueStruct<T> {
    private var array: [T] = []
    
    mutating func enqueue(_ item: T) {
        array.append(item)
    }
    
    mutating func dequeue() -> T? {
        if isEmpty {
            return nil
        } else {
            return array.removeFirst()
        }
    }
    
    var isEmpty: Bool {
        return array.isEmpty
    }
    
    var count: Int {
        return array.count
    }
    
    func peek() -> T? {
        return array.first
    }
}
