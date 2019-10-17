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
  default:
    return {x, y in x + y }
  }
}

//print("Pick an option a. Calculator or b. high order function")
//let option = readLine()!

var repeatCondition = true
var userArray = [String]()

print("Enter a calculation. (Example: 3 * 7)")

repeat {

let userInput = readLine() ?? "Invalid Operation"

    userArray = userInput.components(separatedBy: [" "])
if userArray.count == 3 {
    let num1 = Double(userArray[0]) ?? 0.0
    let num2 = Double(userArray [2]) ?? 0.0
    let closureOp = mathStuffFactory(operation: userArray[1])
    let result = closureOp(num1, num2)
    print(result)
    
    
    print("Would you like to enter another calculation?")
    let tryAgain = readLine() ?? "Yes"
    if tryAgain == "yes" {
    print("Enter a calculation")
    }
    if tryAgain == "no" {
    print("Sorry to hear that. Goodbye.")
    }
   continue
    
} else {
    print("Please enter a valid calculation")
}

    
} while repeatCondition












//let closureOperationSum = mathStuffFactory(operation: "+")
//
//let result = closureOperationSum(45, 5)
//
//print("result of operation is \(result)")
//
////
//
//let closureOperationSubtract = mathStuffFactory(operation: "-")
//
//let result2 = closureOperationSubtract(7,3)
//
//print("result pf operation is \(result2)")
//
////
//
//let closureOperationDivision = mathStuffFactory(operation: "/")
//
//let result3 = closureOperationDivision(4,2)
//
//print(result3)
//
////
//let closureOperationMultiplication = mathStuffFactory(operation: "*")
//let result4 = closureOperationMultiplication(7,7)
//print(result4)

