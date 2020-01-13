//
//  importedItem.swift
//  NucleiAssign
//
//  Created by Nilesh Gajwani on 10/01/20.
//  Copyright © 2020 Nilesh Gajwani. All rights reserved.
//

import Foundation
class ImportedItem: Item{
    
    override class var typeOfItem: ItemTypes{
        return ItemTypes.imported
    }
    override init(name: String, price: Double, quantity: Int)
    {
        
        super.init(name: name, price: price, quantity: quantity)
        
    }
    override func getType() -> ItemTypes {
        return ImportedItem.typeOfItem
    }
    override func getTax() -> Double {
        let importDuty = 0.1 * price
        let costBeforeSurcharge = price + importDuty
        var surcharge:Double
        switch costBeforeSurcharge {
        case 0..<100:
            surcharge = 5
        case 100..<200:
            surcharge = 10
        case 200...:
            surcharge = 0.05 * costBeforeSurcharge
        default:
            surcharge = 0
        }
        let tax = costBeforeSurcharge + surcharge
        return tax
    }
}
