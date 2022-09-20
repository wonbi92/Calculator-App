//
//  CalculatorItemQueue.swift
//  Created by Wonbi on 2022/09/19.
//

import Foundation

struct CalculatorItemQueue {
    private var data: [CalculateItem?] = []
    private var head: Int = 0
    
    var isEmpty: Bool {
        data.isEmpty
    }
    
    var count: Int {
        data.count - head
    }
    
    mutating func enqueue(_ element: CalculateItem) {
        data.append(element)
    }
    
    mutating func dequeue() -> CalculateItem? {
        guard let element = data[head] else { return nil }
        data[head] = nil
        head += 1
        
        if head >= 10 {
            data.removeFirst(head)
            head = 0
        }
        
        return element
    }
}
