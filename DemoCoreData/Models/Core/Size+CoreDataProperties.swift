//
//  Size+CoreDataProperties.swift
//  DemoCoreData
//
//  Created by Khánh Vỹ Đinh on 21/06/2021.
//
//

import Foundation
import CoreData


extension Size {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Size> {
        return NSFetchRequest<Size>(entityName: "Size")
    }

    @NSManaged public var value: String?
    @NSManaged public var product_inventory_detail: NSSet?

}

// MARK: Generated accessors for product_inventory_detail
extension Size {

    @objc(addProduct_inventory_detailObject:)
    @NSManaged public func addToProduct_inventory_detail(_ value: ProductInventory)

    @objc(removeProduct_inventory_detailObject:)
    @NSManaged public func removeFromProduct_inventory_detail(_ value: ProductInventory)

    @objc(addProduct_inventory_detail:)
    @NSManaged public func addToProduct_inventory_detail(_ values: NSSet)

    @objc(removeProduct_inventory_detail:)
    @NSManaged public func removeFromProduct_inventory_detail(_ values: NSSet)

}

extension Size : Identifiable {

}
