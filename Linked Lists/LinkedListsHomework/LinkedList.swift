//
//  LinkedList.swift
//  LinkedListsHomework
//
//  Created by C4Q  on 10/24/16.
//  Copyright © 2016 C4Q . All rights reserved.
//

import Foundation

class Node<T> {
    var key: T!
    var next: Node?
}



class LinkedList<T: Equatable> {
    var head  = Node<T>()
    func printAllKeys() {
        var currentNode = head
        while currentNode.next != nil {
            print(currentNode.key)
            currentNode = currentNode.next!
        }
    }
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
    
    func append(element: T) {
        var currentNode = head
        while currentNode.next != nil {
            currentNode = currentNode.next!
        }
        let newNode = Node<T>()
        newNode.key = element
        currentNode.next = newNode
    }
    
    func getElement(at Index: Int) -> Node<T>? {
        var counter = 0
        let currentNode = head
        while currentNode.next != nil {
            if counter == Index {
                return currentNode
            } else {
                counter += 1
            }
        }
        return nil
    }
    
    func insert(_ key: T, at index: Int) {
    let currentNode = head
    var counter = 0
        while currentNode.next != nil {
            if counter == index {
                let newNode = Node<T>()
                newNode.key = key
                newNode.next = currentNode.next
                currentNode.next = newNode
                
                break
            } else {
                counter += 1
            }
        }
    }
    
    func contains(element targetKey: T) -> Bool {
        if head.key == targetKey {
            return true
        }
        var currentNode = head
        while currentNode.next != nil {
            currentNode = currentNode.next!
            if currentNode.key == targetKey {
                return true
            }
        }
    
        return false
    }
    func remove(at index: Int) {
        let currentNode = head
        var counter = 0
        while currentNode.next != nil {
            if counter == index {
                currentNode.next = currentNode.next?.next
                
                break
            } else {
                counter += 1
            }
        }
    }
}


