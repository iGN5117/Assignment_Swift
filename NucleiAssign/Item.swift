//
//  Item.swift
//  NucleiAssign
//
//  Created by Nilesh Gajwani on 09/01/20.
//  Copyright © 2020 Nilesh Gajwani. All rights reserved.
//

import Foundation

class Item {
    class var typeOfItem:ItemTypes {
        get {
            return ItemTypes.defaultItem
        }
    }
    func getType()->ItemTypes {
        return Item.typeOfItem
    }
    func getTax()->Double {
        return tax
    }
    var name: String
    var price: Double
    var quantity: Int
    var tax: Double
    
    
    
    
    init(name:String, price:Double, quantity:Int) {
        self.name = name
        self.price = price
        self.quantity = quantity
        self.tax = 0
        
        
    }
    
}


