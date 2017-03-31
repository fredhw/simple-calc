//
//  main.swift
//  SimpleCalc
//
//  Created by Frederick Harrison Wijaya on 3/30/17.
//  Copyright © 2017 fredhw. All rights reserved.
//

import Foundation

while true {
    let response = UInt( readLine(strippingNewline:
        true)! )
    if response != nil {
        print("42 + \(response!) = \(42 + response!)")
    } else {
        print("You did not enter a valid number.")
    }

}

