//
//  ArrayProblems.swift
//  ArraysHomeworkProblems
//
//  Created by C4Q  on 10/20/16.
//  Copyright © 2016 C4Q . All rights reserved.
//

import Foundation

//Problem One
//Write an algorithm that moves every element in an array of Ints one space to the left

//Sample input: [0,1,2,3,4,5]
//Sample output: [1,2,3,4,5,0]

func problemOne(arr: [Int]) -> [Int] {
    var array = arr
    let removedInt = array.removeFirst()
    array.append(removedInt)
    return array
}


//Problem Two
//Write an algorithm that moves every element in an array of Ints (x) spaces to the left

//Sample input: [0,1,2,3,4,5], 3
//Sample output: [3,4,5,0,1,2]

func problemTwo(arr: [Int], x: Int) -> [Int] {
    var array = arr
    for _ in 1...x {
        let removedInt = array.removeFirst()
        array.append(removedInt)
    }
    return array
}

//Write a function that accepts two strings, and returns true if one string is rotation of the other, taking letter case into account.
// A string rotation is when you take a string, remove some letters from its end, then append them to the front. For example, “swift” rotated by two characters would be “ftswi”.

//Sample input 1: "abcde”, “eabcd"
//Sample output 1: true

//Sample input 2: "abcde", "abced"
//Sample output 2: false

//Sample input 3: "abc", "a"
//Sample output 3: false

func problemThree(strOne: String, strTwo: String) -> Bool {
    var firstString = strOne
    var secondString = strTwo
    var stringArray = firstString.characters.map { String($0) }
    let secondStringArray = secondString.characters.map { String($0)}
    
    for _ in 0..<stringArray.count {
        let removedCharacter = stringArray.removeFirst()
        stringArray.append(removedCharacter)
        
        if stringArray == secondStringArray {
            return true
        } else {
            continue
        }
    }
    return false
    
}
//
//
//Problem Four
//Given a square matrix of size 3 x 3 , calculate the absolute value of the difference between the sums of its diagonals.

//Input visualization
/*
  1  2  3
  4  5  6
 11  8  9
 */


//Sample Input: [[1,2,3],[4,5,6],[11,8,9]]
//Sample Output: 4

//|(1 + 5 + 9) - (3 + 5 + 11)| = |15 - 19| = |-4| = 4

func problemFour(arr: [[Int]]) -> Int {
    var arraySumOne = 0
    var arraySumTwo = 0
    
    for i in 0..<arr.count {
        for j in 0..<arr.count {
            if i == j {
                arraySumOne += arr[i][j]
            }
            if i + j == arr.count - 1 {
                arraySumTwo += arr[i][j]
            }
        }
    }
    let difference = arraySumOne - arraySumTwo
    if difference < 0 {
        return difference * -1
    } else {
        return difference
    }
}


//Problem Five
//Given a square matrix of size n x n , calculate the absolute value of the difference between the sums of its diagonals.

//Input visualization
/*
 4 1 2 5 
 3 1 9 2
 4 1 3 8
 9 2 4 3
 */

//Sample Input: [[4,1,2,5],[3,1,9,2],[4,1,3,8],[9,2,4,3]]
//Sample Output: 13

//|(4 + 1 + 3 + 3) - (5 + 9 + 1 + 9)| = |11 - 24| = |-13| = 13

func problemFive(arr: [[Int]]) -> Int {
    var arraySumOne = 0
    var arraySumTwo = 0
    
    for i in 0..<arr.count {
        for j in 0..<arr.count {
            if i == j {
                arraySumOne += arr[i][j]
            }
            if i + j == arr.count - 1 {
                arraySumTwo += arr[i][j]
            }
        }
    }
    let difference = arraySumOne - arraySumTwo
    if difference < 0 {
        return difference * -1
    } else {
        return difference
    }

}

