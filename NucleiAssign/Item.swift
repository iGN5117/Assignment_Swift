//
//  Item.swift
//  NucleiAssign
//
//  Created by Nilesh Gajwani on 09/01/20.
//  Copyright © 2020 Nilesh Gajwani. All rights reserved.
//

import Foundation

class Item {
    class var typeOfItem: ItemTypes? {
        get {
            return nil
        }
    }
    func getType()->ItemTypes {
        return Item.typeOfItem!
    }
    
    var name: String
    var price: Double
    var quantity: Int
   
    
    
    
    
    init(name:String, price:Double, quantity:Int) {
        self.name = name
        self.price = price
        self.quantity = quantity
      
        
        
    }
    
}


