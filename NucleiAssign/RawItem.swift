//
//  rawItem.swift
//  NucleiAssign
//
//  Created by Nilesh Gajwani on 10/01/20.
//  Copyright © 2020 Nilesh Gajwani. All rights reserved.
//

import Foundation
class RawItem: Item, TaxProtocol {
    override class var typeOfItem: ItemTypes {
        return ItemTypes.raw
    }
    lazy let tax: Double
    
    override init(name: String,price: Double,quantity: Int) {
        
        super.init(name: name, price: price, quantity: quantity)
        
    }
    override func getType() -> ItemTypes {
        return RawItem.typeOfItem
    }
    
    
    func getTax() -> Double {
        tax = 0.125 * price
        return tax
    }
    
}
