//
//  QueueProblems.swift
//  QueuesHWProblems
//
//  Created by C4Q  on 11/1/16.
//  Copyright © 2016 C4Q . All rights reserved.
//

import Foundation

//In all problems, the input queue should be in its original state after your function is done running.



//Find the sum of a queue
func sum(q: Queue<Int>) -> Int? {
    guard q.isEmpty() == false else {return nil}
    
    let replacementStack = Stack<Int>()
    var sum = 0
    while !q.isEmpty() {
        let top = q.deQueue()!
        sum += top
        replacementStack.push(element: top)
        }
    while !replacementStack.isEmpty() {
        q.enQueue(newElement: replacementStack.pop()!)
    }
    return sum
}

//Find the smallest element in a queue
func smallest<T:Comparable>(q: Queue<T>) -> T? {
    guard q.isEmpty() == false else {return nil}
    var smallest = q.peek()
    while !q.isEmpty() {
       let top = q.deQueue()
        if smallest! > top! {
            smallest = top
        }
    }
    return smallest
}

//Find out whether or not a queue is in sorted order from smallest to biggest
//True example:   (Back) 9 - 6 - 2 - 1 (Front)
//False example   (Back) 4 - 19 - 134 200 (Front)
func isSorted<T: Comparable>(q: Queue<T>) -> Bool? {
    guard q.isEmpty() == false else {return nil}
    let smallest = q.peek()
    while !q.isEmpty(){
        let top = q.deQueue()
        if smallest! > top! {
            return false
        }
    }
    return true
}

//Return a reversed queue.
func reverse<T>(q: Queue<T>) -> Queue<T> {
    let replacementStack = Stack<T>()
    let replacementQueue = Queue<T>()
    while !q.isEmpty() {
        let top = q.deQueue()
        replacementStack.push(element: top!)
    }
    while !replacementStack.isEmpty() {
        replacementQueue.enQueue(newElement: replacementStack.pop()!)
    }
    
    return replacementQueue
}

//Determine if two queues are equal.

func areEqual<T: Equatable>(qOne: Queue<T>, qTwo: Queue<T>) -> Bool {
    return false
}

//Bonus: Hot Potato
//https://interactivepython.org/runestone/static/pythonds/BasicDS/SimulationHotPotato.html

