//
//  main.swift
//  Calculator
//
//  Created by Alex Paul on 10/25/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import Foundation

func mathStuffFactory(operation: String) -> (Int, Int) -> Int {
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


let closureOperationSum = mathStuffFactory(operation: "+")

let result = closureOperationSum(45, 5)

print("result of operation is \(result)")

//

let closureOperationSubtract = mathStuffFactory(operation: "-")

let result2 = closureOperationSubtract(7,3)

print("result pf operation is \(result2)")

//

let closureOperationDivision = mathStuffFactory(operation: "/")

let result3 = closureOperationDivision(4,2)

print(result3)

//
let closureOperationMultiplication = mathStuffFactory(operation: "*")
let result4 = closureOperationMultiplication(7,7)
print(result4)

