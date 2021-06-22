//
//  ProductInventory+CoreDataProperties.swift
//  DemoCoreData
//
//  Created by Khánh Vỹ Đinh on 21/06/2021.
//
//

import Foundation
import CoreData


extension ProductInventory {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<ProductInventory> {
        return NSFetchRequest<ProductInventory>(entityName: "ProductInventory")
    }

    @NSManaged public var quantity: Int16
    @NSManaged public var color: Color?
    @NSManaged public var product: Product?
    @NSManaged public var size: Size?

}

extension ProductInventory : Identifiable {

}
