//
//  main.swift
//  Calculator
//
//  Created by Alex Paul on 10/25/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import Foundation

func mathStuffFactory(operation: String) -> (Double, Double) -> Double {
  switch operation {
  case "+":
    return {x, y in x + y }
  case "-":
    return {x, y in x - y }
  case "*":
    return {x, y in x * y }
  case "/":
    return {x, y in x / y }
  case "?":
    return {x, y in x * y}
  default:
    return {x, y in x + y }
  }
}
let guessOperation = "?"
var repeatCondition = true
var userArray = [String]()
var userResponseA = "a"
var userResponseB = "b"



repeat {
    
print("Choose your calculator. a or b:")
 
let userResponnseAorB = readLine()!
    
if userResponnseAorB == userResponseA {
     print("Enter your calculation")
    
let userResponse = readLine()!
userArray = userResponse.components(separatedBy: [" "])
if userArray.count == 3 {
    let num1 = Double(userArray[0]) ?? 0.0
    let num2 = Double(userArray [2]) ?? 0.0
    let closureOp = mathStuffFactory(operation: userArray[1])
    let result = closureOp(num1, num2)
    print(result)
    print("would you like to try another calculation?")
}


    
let tryAgain = readLine()!

if tryAgain == "yes" {

    }
if tryAgain == "no" {
    break
    }
    
    } else if userResponnseAorB == userResponseB {
    print("Enter your High order function calculation")
    }
    
} while repeatCondition
