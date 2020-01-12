//: [Previous](@previous)

import Foundation

// Stack Implementation

struct Stack<Element> {
    fileprivate var array: [Element] = []
    
    var isEmpty: Bool {
        return array.isEmpty
    }
    
    var count: Int {
        return array.count
    }
    
    mutating func push(_ element: Element) {
        array.append(element)
    }
    
    mutating func pop() -> Element? {
        return array.popLast()
    }
    
    func peek() -> Element? {
        return array.last
    }
}

// Protocol to visualize elements in the stack
extension Stack: CustomStringConvertible {
    var description: String {
        let topDivider = "---Stack---\n"
        let bottomDivider = "\n-----------\n"
        
//        let stackElements = array.reversed().joined(separator: "\n")
        let stackElements = array.map { "\($0)" }.reversed().joined(separator: "\n")
        
        return topDivider + stackElements + bottomDivider
    }
}

var bookStack = Stack<String>()
bookStack.push("Zero to One")
bookStack.peek() // "Zero to One"
bookStack.pop() // "Zero to One"
bookStack.pop() // nil

bookStack.push("Zero to One")
bookStack.push("Chess")
bookStack.push("Google")
bookStack.push("Apple")
print(bookStack)

//: [Next](@next)
