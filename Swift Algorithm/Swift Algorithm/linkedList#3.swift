import Foundation

/*
 Detect A Cycle
 https://www.hackerrank.com/challenges/ctci-linked-list-cycle/problem
 https://en.wikipedia.org/wiki/Cycle_detection#Floyd's_Tortoise_and_Hare
 
 A linked list is said to contain a cycle if any node is visited more than once while traversing the list. For example, in the following graph there is a cycle formed when node 5 points back to node 3.
 
        4
      /   \
 1 2 3      5
     \_____/
 
 */

class Node {
    var data: Int
    weak var next: Node?
    
    init(_ data: Int, _ next: Node? = nil) {
        self.data = data
        self.next = next
    }
}

/// Time: O(n^2)
func hasCycle(first: Node) -> Bool {
    var currentNode = first
    var dataArray = [Int]()
    
    while currentNode.next != nil {
        if dataArray.contains(currentNode.data) {
            return true
        }
        dataArray.append(currentNode.data)
        currentNode = currentNode.next!
    }
    return false
}

/// Time: O(n)
func hasCyclePacman(first: Node) -> Bool {
    var slow: Node? = first
    var fast: Node? = first
    
    while fast != nil && fast!.next != nil {
        slow = slow?.next
        fast = fast?.next?.next
        
        if slow?.data == fast?.data {
            return true
        }
    }
        
    return false
}

let node5 = Node(5)
let node4 = Node(4)
let node3 = Node(3)
let node2 = Node(2)
let head = Node(1)

head.next = node2
node2.next = node3
node3.next = node4
node4.next = node5
node5.next = node3

print(hasCycle(first: head))
