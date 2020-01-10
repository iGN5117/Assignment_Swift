//
//  manufacturedItem.swift
//  NucleiAssign
//
//  Created by Nilesh Gajwani on 10/01/20.
//  Copyright © 2020 Nilesh Gajwani. All rights reserved.
//

import Foundation
class ManufacturedItem: Item{
    override  class var typeOfItem:ItemTypes{
        return ItemTypes.manufactured
    }
    override init(name:String, price:Double, quantity:Int)
    {
        super.init(name: name, price: price, quantity: quantity)
        super.tax = getTax()
    }
    override func getType() -> ItemTypes {
        return ManufacturedItem.typeOfItem
    }
    override func getTax() -> Double {
        let preTax = 0.125 * price
        let tax = preTax + 0.02 * (price + preTax)
        return tax
    }
}
