//
//  main.swift
//  NucleiAssign
//
//  Created by Nilesh Gajwani on 09/01/20.
//  Copyright © 2020 Nilesh Gajwani. All rights reserved.
//

import Foundation

print("-----------------------------------------")
print("      Welcome To the Inventory System    ")
print("-----------------------------------------")
print("Follow the following command line inputs to proceed.....")
print("-name <name> to enter name of item (Compulsory)")
print("-type <type> to enter type of item (raw/imported/manufactured)")
print("-price <price> to enter price of each item")
print("-quantity <quantity> to enter quantity of the item")
print("\n")
var continueLoop = true
var name: String, type: ItemTypes?, price: Double, quantity: Int
var items = [Item]()
while(continueLoop) {
    print("Do you want to enter an item? Press Enter for yes,type  -exit to exit")
    if let inputStr = readLine() {
        switch(inputStr) {
        case "-exit":
            continueLoop = false
            break
            
        case "-view":
            print("                                     Inventory                                        ")
            print("\n")
            print(" NAME ","\t\t"," PRICE ","\t\t","Quantity","\t\t  ","TYPE","\t\t  ","TOTAL PRICE")
            print("................................................................................................")
            
            for item in items {
                print(item.name,"\t\t",item.price,"\t\t\t",item.quantity,"\t\t\t\t",item.getType(),"\t\t\t",item.tax)
                
                print("................................................................................................")
                
            }
            
            
        default:
            (name,type,price,quantity) = Parser.parse()
            var newItem: Item
            switch type {
            case .raw:
                newItem = RawItem(name: name, price: price, quantity: quantity)
                items.append(newItem)
            case .imported:
                newItem = ImportedItem(name: name, price: price, quantity: quantity)
                items.append(newItem)
            case .manufactured:
                newItem = ManufacturedItem(name: name, price: price, quantity: quantity)
                items.append(newItem)
            default:
                print("Invalid Item Type entered.....")
            }
            
            
        }
    }
}
