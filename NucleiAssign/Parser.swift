//
//  Parser.swift
//  NucleiAssign
//
//  Created by Nilesh Gajwani on 10/01/20.
//  Copyright © 2020 Nilesh Gajwani. All rights reserved.
//

import Foundation
class Parser {
    
    
    static func parse()->(name: String,type: ItemTypes?,price: Double,quantity: Int) {
        var continueLoop = true
        var name: String = "",type: ItemTypes?,price: Double = 0 ,quantity: Int = 1
        while(continueLoop) {
            
            if var inputStr = readLine() {
                inputStr = inputStr.trimmingCharacters(in: .whitespaces)
                let keyValuePair = inputStr.components(separatedBy: " ")
                
                let key = keyValuePair[keyValuePair.startIndex]
                let value: String
                if(key != "-next") {
                    value = String(keyValuePair[keyValuePair.index(after: keyValuePair.startIndex)])
                }
                else{
                    value = ""
                }
                switch key {
                case "-name":
                    name = value
                case "-type":
                    let typeOptional = try?ItemTypes(rawValue: value)
                    if let typeUnwrapped = typeOptional {
                        type = typeUnwrapped
                    }
                    else {
                        print("invalid value entered for type of item")
                    }
                case "-price":
                    let priceOptional = Double(value)
                    if let priceUnwrapped = priceOptional {
                        price = priceUnwrapped
                    }
                    else {
                        print("Invalid value entered for price")
                    }
                    
                case "-quantity":
                    let quantityOptional = Int(value)
                    if let quantityUnwrapped = quantityOptional {
                        quantity = quantityUnwrapped
                    }
                    else {
                        print("Invalid value entered for quantity")
                    }
                    
                case "-next":
                    if(name == "") {
                        print("Name of item not entered, Please enter name")
                        continue
                    }
                    else if(type == nil) {
                        print("Invalid type entered, Please enter a valid type")
                        continue
                        
                    }
                    else {
                        print("adding 1 item")
                        continueLoop = false
                    }
                    
                default:
                    print("Invalid entry")
                    continue
                    
                }
                
            }
            
        }
        return (name,type,price,quantity)
    }
}
