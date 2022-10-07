//
//  LinkedList.swift
//  Created by Ash
//

struct LinkedList<T: CalculateItem> {
    class Node<T: CalculateItem> {
        fileprivate var value: T
        fileprivate var next: Node?
        
        fileprivate init(_ value: T, next: Node? = nil) {
            self.value = value
            self.next = next
        }
    }
    
    private(set) var head: Node<T>?
    private(set) var nodeCount: Int = 0
    
    var isEmpty: Bool {
        if nodeCount == 0 {
            return true
        } else {
            return false
        }
    }
    
    mutating func append(_ element: T) {
        guard isEmpty == false else {
            head = Node(element)
            nodeCount += 1
            return
        }

        var node = head
        while node?.next != nil {
            node = node?.next
        }
        
        node?.next = Node(element)
        nodeCount += 1
    }
    
    mutating func removeFirst() -> T? {
        let value = head?.value
        
        head = head?.next
        nodeCount -= 1
        
        return value
    }
    
    mutating func removeAll() {
        head = nil
        nodeCount = 0
    }
    
    init() {}
}
