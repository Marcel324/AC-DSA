//
//  DayThreeLinkedListsProblems.swift
//  LinkedListsHomeworkThree
//
//  Created by C4Q  on 10/26/16.
//  Copyright © 2016 C4Q . All rights reserved.
//

import Foundation


class Node<T> {
    var key: T!
    var next: Node?
    var previous: Node?
}

class LinkedList<T: Equatable> {
    
    var head = Node<T>()
    
    var count: Int {
        if head.key == nil {
            return 0
        }
        var counter = 1
        var currentNode = head
        while currentNode.next != nil {
            counter += 1
            currentNode = currentNode.next!
        }
        return counter

    }
    
    //empty list check
    func isEmpty() -> Bool {
        if head.key == nil {
        return true
        } else {
            return false
        }
    }
    
    
    
    //add link item
    func append(element: T) {
        
        var currentNode = head
        while currentNode.next != nil {
            currentNode = currentNode.next!
            
        }
        let newNode = Node<T>()
        newNode.key = element
        var tempNode = currentNode
        currentNode.next = newNode
        tempNode = currentNode.previous!
    }
    
    //print all keys for the class
    func printAllKeys() {
        
    }
    
    //obtain link at a specific index
    func getElement(at index: Int) ->Node<T>! {
        var counter = 0
        let currentNode = head
        while currentNode.next != nil {
            if counter == index {
                return currentNode
            } else {
                counter += 1
            }
        }
        return nil

    }
    
    //insert at specific index
    func insert(_ key: T, at index: Int) {
        
    }
    
    //remove at specific index
    func remove(at index: Int) {

    }
}
