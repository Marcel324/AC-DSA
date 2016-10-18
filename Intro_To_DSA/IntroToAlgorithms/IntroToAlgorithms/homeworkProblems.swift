//
//  homeworkProblems.swift
//  IntroToAlgorithms
//
//  Created by C4Q  on 10/14/16.
//  Copyright © 2016 C4Q . All rights reserved.
//

import Foundation

//Given an array of Ints, return a tuple where:
//The first element is the number of negative values
//The second element is the number of zeros 
//The third element is the number of positive values.


func posZeroNeg(myArr: [Int]) -> (Int, Int, Int) {
    var theTuple = (0, 0, 0)
    for i in myArr {
        if i < 0 {
         theTuple.0 += 1
        } else if i == 0 {
            theTuple.1 += 1
        } else if i > 0 {
            theTuple.2 += 1
        }
        }
    return theTuple
}


//Given an array of Ints, return the second smallest integer.  Assume every value is unique.  Return nil if the array has less than two elements

func secondSmallest(myArr: [Int]) -> Int? {
    guard myArr.count >= 2 else {return nil}
    return myArr.sorted()[1]
    
}

//A number is prime if it is only evenly divisible by 1 and itself.  Write an algorithm that checks if an Int is prime

func isPrime(x: Int) -> Bool {
    for i in 2..<x {
        if x % i == 0 {
            return false
        }
    }
    return true
}



//Write an anglorithm that removes all characters from a String matching an input character

func removeCharacter(s: String, c: Character) -> String {
  var newString = ""
   for i in s.characters {
        if i == c {
           newString.append("")
        } else { newString.append(i)
    }
    }
 return newString
}

//Write an algorithm that removes all characters from a String contained within an input array of characters

func removeMultipleCharacters(s: String, arr: [Character]) -> String {
    var newString = ""
    for i in s.characters {
        if arr.contains(i) {
            newString.append("")
        } else { newString.append(i)
    }
    }
    return newString
}
