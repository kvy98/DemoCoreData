//
//  Color+CoreDataProperties.swift
//  DemoCoreData
//
//  Created by Khánh Vỹ Đinh on 21/06/2021.
//
//

import Foundation
import CoreData


extension Color {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Color> {
        return NSFetchRequest<Color>(entityName: "Color")
    }

    @NSManaged public var name: String?
    @NSManaged public var value: String?
    @NSManaged public var product_inventory_detail: NSSet?

}

// MARK: Generated accessors for product_inventory_detail
extension Color {

    @objc(addProduct_inventory_detailObject:)
    @NSManaged public func addToProduct_inventory_detail(_ value: ProductInventory)

    @objc(removeProduct_inventory_detailObject:)
    @NSManaged public func removeFromProduct_inventory_detail(_ value: ProductInventory)

    @objc(addProduct_inventory_detail:)
    @NSManaged public func addToProduct_inventory_detail(_ values: NSSet)

    @objc(removeProduct_inventory_detail:)
    @NSManaged public func removeFromProduct_inventory_detail(_ values: NSSet)

}

extension Color : Identifiable {

}
