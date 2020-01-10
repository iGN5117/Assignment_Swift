//
//  Parser.swift
//  NucleiAssign
//
//  Created by Nilesh Gajwani on 10/01/20.
//  Copyright © 2020 Nilesh Gajwani. All rights reserved.
//

import Foundation
class Parser
{
    
    
    static func parse()->(name:String,type:ItemTypes?,price:Double,quantity:Int)
    {
        print("in parse function")
        var continueLoop = true
        var name:String = "",type:ItemTypes?,price:Double = 0,quantity:Int = 1
        while(continueLoop)
        {
            
            if let inputStr = readLine()
            {
                let keyValuePair = inputStr.components(separatedBy: " ")
                
                let key = keyValuePair[keyValuePair.startIndex]
                var value:String? = ""
                if(key != "-next")
                {
                    value = String(keyValuePair[keyValuePair.index(after: keyValuePair.startIndex)])
                }
                switch key{
                case "-name":
                    name = value!
                case "-type":
                    type = ItemTypes(rawValue: value!)
                case "-price":
                    price = Double(value!)!
                case "-quantity":
                    quantity = Int(value!)!
                case "-next":
                    print("\(name), \(type!), \(price), \(quantity)")
                    
                    if(name == "")
                    {
                        print("Name of item not entered, Please enter name")
                        continue
                    }
                    else if(type == nil)
                    {
                        print("Invalid type entered, Please enter a valid type")
                        continue
                        
                    }
                    else
                    {
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
