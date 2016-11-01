//
//  StackProblems.swift
//  StackHomeworkProblems
//
//  Created by C4Q  on 10/30/16.
//  Copyright © 2016 C4Q . All rights reserved.
//

import Foundation


//Problem One:
//Find the largest integer in a Stack of Ints

func largest(stack: Stack<Int>) -> Int {
    var largest = 0
    let tempStack = Stack<Int>()
    while stack.isEmpty() == false {
        let top = stack.pop()!
        if top > largest {
            largest = top
            }
        tempStack.push(element: top)
        
    }
    while tempStack.isEmpty() == false {
        stack.push(element: tempStack.pop()!)
    }
    return largest
}


//Problem Two:
//Find the sum of a Stack of Ints

func sum(stack: Stack<Int>) -> Int {
    var sum = 0
    let tempStack = Stack<Int>()
    while stack.isEmpty() == false {
        let top = stack.pop()
        sum += top!
        tempStack.push(element: top!)
    }
    while tempStack.isEmpty() == false {
        stack.push(element: tempStack.pop()!)
    }
    return sum
}

//Problem Three:
//Reverse a Stack without using an Array

//Sample input:
/*
 4
 2
 9
 3
*/

//Sample output:
/*
 3
 9
 2
 4
*/

func reverse<T>(stack: Stack<T>) -> Stack<T> {
    let reversedStack = Stack<T>()
    let replacementStack = Stack<T>()
    while stack.isEmpty() == false {
        let top = stack.pop()!
        reversedStack.push(element: top)
        replacementStack.push(element: top)
    }
    while replacementStack.isEmpty() == false {
        stack.push(element: replacementStack.pop()!)
    }
    return reversedStack
}


//Problem Four:
//Determine if two stacks are equal

func equalStacks<T: Equatable>(stackOne: Stack<T>, stackTwo: Stack<T>) -> Bool {
    if stackOne.isEmpty() && stackTwo.isEmpty() {
        return true
    }
   
    let replaceStackOne = Stack<T>()
    let replaceStackTwo = Stack<T>()
    
    while stackOne.isEmpty() == false && stackTwo.isEmpty() == false {
        let topOne = stackOne.pop()!
        let topTwo = stackTwo.pop()!
        if topOne == topTwo {
            replaceStackOne.push(element: topOne)
            replaceStackTwo.push(element: topTwo)
        }
        else { return true }
    }
    while replaceStackOne.isEmpty() == false && replaceStackTwo.isEmpty() == false {
        stackOne.push(element: replaceStackOne.pop()!)
        stackTwo.push(element: replaceStackTwo.pop()!)
    }
    return true
}



//Problem Five:
//Write a function that pushes a new element to the bottom of a Stack

func pushBottom<T>(stack: Stack<T>, newElement: T) -> Stack<T> {
    let newStack = Stack<T>()
    while stack.isEmpty() == false {
        let top = stack.pop()!
        newStack.push(element: top)
    }
    stack.push(element: newElement)
    while newStack.isEmpty() == false {
        stack.push(element: newStack.pop()!)
    }
    
    return stack
}

//Problem Six:
//Determine if the parentheses are balanced in a given String

//Sample input: ((()))
//Sample output: true

//Sample input: ((())
//Sample output: false

//Sample input: (()((())()))
//Sample output: false


func isBalanced(str: String) -> Bool {
    return false
}

//Bonus: Problem Seven:
//Use a stack to convert a number in decimal to binary

func convertToBinary(_ num: Int) -> String {
    return ""
}

