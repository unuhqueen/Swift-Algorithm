//
//  main.swift
//  Swift Algorithm
//
//  Created by Seungwon Choi on 4/26/24.
//

import Foundation

class Node {
    var data: Int
    var next: Node?
    
    init(_ data: Int, _ next: Node? = nil) {
        self.data = data
        self.next = next
    }
}

class LinkList {
    private var head: Node?
    
    /// 맨 앞에 새로운 node 추가하기, O(1)
    func addFront(_ data: Int) {
        // 1. 인수로 입력 받은 data를 가진 새 node 만들기
        let newNode = Node(data)
        // 2. 새로운 node의 다음 node는 head(가장 첫 번째 node)가 됨
        newNode.next = head
        // 3. head를 새로운 node로 바꿈
        head = newNode
    }

    /// 첫 번째 element 가져오기, O(1)
    func getFirst() -> Int? {
        // 1. linked list가 비어 있는지 먼저 확인
        if head == nil {
            return nil
        }
        // 2. 아닐 경우 head의 data 가져오기
        return head!.data
    }

    /// 맨 뒤에 새로운 node 추가하기, O(n)
    func addBack(_ data: Int) {
        // 1. 인수로 입력 받은 data를 가진 새 node 만들기
        let newNode = Node(data)

        // 2. linked list가 비어 있을 경우, head에 새로운 node를 할당하며 끝냄
        if head == nil {
            head = newNode
            return
        }
        
        // 3. 아닐 경우 head를 새로운 node 변수에 할당
        var node = head!
        // 4. 마지막 node까지 walking the list
        while(node.next != nil) {
            node = node.next!
        }
        // 5. 마지막 node의 다음 node를 새 node로 할당
        node.next = newNode
    }
    
    /// 마지막 element 가져오기, O(n)
    func getLast() -> Int? {
        // 1. linked list가 비어 있는지 먼저 확인
        if head == nil {
            return nil
        }
        
        // 2. 아닐 경우 head를 새로운 node 변수에 할당
        var node = head!
        // 3. 마지막 node까지 walking the list
        while(node.next != nil) {
            node = node.next!
        }
        
        // 4. 마지막 node의 데이터 가져오기
        return node.data
    }

    /// 지정한 위치에 node 삽입하기, O(n)
    func insert(position: Int, data: Int) {
        // 1. 지정한 위치가 0일 경우 맨 앞에 node 추가
        if position == 0 {
            addFront(data)
            return
        }
        
        // 2. 아닐 경우 인수로 입력 받은 data를 가진 새 node 만들기
        let newNode = Node(data)
        // 3. head를 currentNode 변수에 할당
        var currentNode = head
        
        // 4. 지정한 position - 1까지 walking the list
        for _ in 0..<position - 1 {
            currentNode = currentNode?.next!
        }
        
        // 5. 새 node의 다음 node를 currentNode의 다음 node로 설정
        newNode.next = currentNode?.next
        // 6. currentNode는 다음 node를 새 node로 지정
        currentNode?.next = newNode
    }
    
    /// 첫 번째 node 삭제하기, O(1)
    func deleteFirst() {
        // 1. head를 현재 head의 다음 node로 지정
        head = head?.next
    }

    /// 마지막 node 삭제하기, O(n)
    func deleteLast() {
        // 1. node가 한 개(head)만 있을 경우 head를 nil로 만듦
        if head?.next == nil {
            head = nil
            return
        }
        
        // 2. 아닐 경우 nextNode를 head로 지정
        var nextNode = head
        // 3. previousNode를 nil로 지정
        var previousNode: Node?
        
        // 4. nextNode의 다음 node가 nil일 때까지 walking the list
        while(nextNode?.next != nil) {
            previousNode = nextNode
            nextNode = nextNode?.next
        }
        
        // 5. nextNode의 다음 node가 nil일 경우 previousNode의 다음 node를 nil로 변경
        previousNode?.next = nil
    }
    
    /// 지정한 위치의 node 삭제하기, O(n)
    func delete(at position: Int) {
        // 1. 지정한 위치가 0일 경우 맨 앞의 node 삭제
        if position == 0 {
            self.deleteFirst()
            return
        }
        
        // 2. 아닐 경우 nextNode를 head로 지정
        var nextNode = head
        // 3. previousNode를 nil로 지정
        var previousNode: Node?
        
        // 4. 지정한 position까지 walking the list
        for _ in 0..<position {
            previousNode = nextNode
            nextNode = nextNode?.next
        }
        // 5. previousNode의 다음 node를 nextNode의 다음 node로 교체하여 중간 node를 skip
        previousNode?.next = nextNode?.next
    }
    
    /// Linked List가 비어있는지 확인
    var isEmpty: Bool {
        return head == nil
    }
    
    /// Linked List 비우기
    func clear() {
        head = nil
    }
    
    func printLinkedList() {
        if head == nil { return }
        
        var result = [Int]()
        var node = head
        result.append(node!.data)
        
        while node?.next != nil {
            result.append(node!.next!.data)
            node = node?.next
        }
        
        print(result)
    }
}

let linkedList = LinkList()

linkedList.addFront(3)
linkedList.addFront(2)
linkedList.addFront(1)
linkedList.printLinkedList()

linkedList.addFront(4)
linkedList.printLinkedList()

linkedList.addBack(5)
linkedList.printLinkedList()

print(linkedList.getFirst())
print(linkedList.getLast())

linkedList.insert(position: 2, data: 6)
linkedList.printLinkedList()

linkedList.deleteFirst()
linkedList.printLinkedList()

linkedList.deleteLast()
linkedList.printLinkedList()
linkedList.deleteLast()
linkedList.printLinkedList()

linkedList.delete(at: 2)
linkedList.printLinkedList()

print(linkedList.isEmpty)
linkedList.clear()
linkedList.printLinkedList()
