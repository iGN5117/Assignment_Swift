//
//  rawItem.swift
//  NucleiAssign
//
//  Created by Nilesh Gajwani on 10/01/20.
//  Copyright © 2020 Nilesh Gajwani. All rights reserved.
//

import Foundation
class RawItem: Item {
    override class var typeOfItem: ItemTypes {
        return ItemTypes.raw
    }
    
    
    override init(name: String,price: Double,quantity: Int) {
        
        super.init(name: name, price: price, quantity: quantity)
        
    }
    override func getType() -> ItemTypes {
        return RawItem.typeOfItem
    }
    
    
    override func getTax() -> Double {
        let tax = 0.125 * price
        return tax
    }
    
}
