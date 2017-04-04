//
//  main.swift
//  SimpleCalc
//
//  Created by Frederick Harrison Wijaya on 3/30/17.
//  Copyright © 2017 fredhw. All rights reserved.
//

import Foundation

func factorial(num : UInt) -> UInt {
    var total: UInt = 1
    for index in 1 ... num {
        total = total * index
    }
    return total
}

print("Instructions: This calculator can add, subtract, multiply, divide and give remainder.")
print("For double operand operations please input a valid number and press return, followed with an operator, and then a second number.")
print("For multi operand operations please input numbers and end with either 'count' or 'avg'")
print("To calculate factorial please input a valid number and press return, followed by 'fact'")
print("")


while true {
    print("Enter an expression separated by returns:")
    
    let first = UInt(readLine(strippingNewline: true)!)
    if first != nil {
        let num1 = first!
        var count : UInt = 1
        var sum : UInt = num1
        var next : String = readLine(strippingNewline: true)!
        
        var nextNumber = UInt(next)
        if nextNumber != nil {
            while nextNumber != nil {
                count += 1
                sum += UInt.init(next)!
                next = readLine(strippingNewline: true)!
                nextNumber = UInt(next)
            }
        
            if next == "count" {
                print("Result: \(count)")
            } else if next == "avg" {
                print(String(format: "Result: %.2f", Double(sum) / Double(count)))
            } else {
                print("Invalid operator, please try again.")
            }
        } else if next == "+" {
            let num2 = UInt( readLine(strippingNewline: true)!)
            if num2 == nil {
                print("Invalid number, please try again.")
            } else {
                print("Result: \(num1 + num2!)")
            }
        } else if next == "-" {
            let num2 = UInt.init( readLine(strippingNewline: true)!)
            if num2 == nil {
                print("Invalid number, please try again.")
            } else {
                if num1 >= num2! {
                    print("Result: \(num1 - num2!)")
                } else {
                    print("Result: -\(num2! - num1)")
                }
            }
        } else if next == "*" {
            let num2 = UInt.init( readLine(strippingNewline: true)!)
            if num2 == nil {
                print("Invalid number, please try again.")
            } else {
                print("Result: \(num1 * num2!)")
            }
        } else if next == "/" {
            let num2 = UInt.init( readLine(strippingNewline: true)!)
            if num2 == nil {
                print("Invalid number, please try again.")
            } else {
                print(String(format:"Result: %.2f", Double(num1) / Double(num2!)))
            }
        } else if next == "%" {
            let num2 = UInt.init( readLine(strippingNewline: true)!)
            if num2 == nil {
                print("Invalid number, please try again.")
            } else {
                print("Result: \(num1 % num2!)")
            }
        } else if next == "fact" {
            print("Result: \(factorial(num: num1))")
        } else if next == "count" {
            print("Result: 1")
        } else if next == "avg" {
            print("Result: \(num1)")
        } else {
            print("Invalid operator, please try again.")
        }
    } else {
        print("Invalid number, please input a number first.")
    }
    print("")
}



