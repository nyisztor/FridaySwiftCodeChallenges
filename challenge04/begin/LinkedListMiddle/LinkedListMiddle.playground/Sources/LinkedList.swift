// The Tortoise and Hare Algorithm - Friday Swift Code Challenges

import Foundation

public class Node<T> {
    public var value: T
    public init(value: T) { self.value = value }
    public var next: Node<T>?
}

public class LinkedList<T> {
    
    var first: Node<T>?
    var last: Node<T>?
    
    public var head: Node<T>? { first }
    public var tail: Node<T>? { last }
    
    public init() {}
    
    public func append(_ value: T) {
        let newNode = Node<T>(value: value)
        
        if let tail = self.last {
            tail.next = newNode
        } else {
            first = newNode
        }
        last = newNode
    }
}
