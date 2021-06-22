//
//  Product+CoreDataProperties.swift
//  DemoCoreData
//
//  Created by Khánh Vỹ Đinh on 21/06/2021.
//
//

import Foundation
import CoreData


extension Product {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Product> {
        return NSFetchRequest<Product>(entityName: "Product")
    }

    @NSManaged public var product_image: String?
    @NSManaged public var product_name: String?
    @NSManaged public var product_price: NSDecimalNumber?
    @NSManaged public var category: Category?
    @NSManaged public var order_detail: NSSet?
    @NSManaged public var product_inventory: NSSet?

}

// MARK: Generated accessors for order_detail
extension Product {

    @objc(addOrder_detailObject:)
    @NSManaged public func addToOrder_detail(_ value: OrderDetail)

    @objc(removeOrder_detailObject:)
    @NSManaged public func removeFromOrder_detail(_ value: OrderDetail)

    @objc(addOrder_detail:)
    @NSManaged public func addToOrder_detail(_ values: NSSet)

    @objc(removeOrder_detail:)
    @NSManaged public func removeFromOrder_detail(_ values: NSSet)

}

// MARK: Generated accessors for product_inventory
extension Product {

    @objc(addProduct_inventoryObject:)
    @NSManaged public func addToProduct_inventory(_ value: ProductInventory)

    @objc(removeProduct_inventoryObject:)
    @NSManaged public func removeFromProduct_inventory(_ value: ProductInventory)

    @objc(addProduct_inventory:)
    @NSManaged public func addToProduct_inventory(_ values: NSSet)

    @objc(removeProduct_inventory:)
    @NSManaged public func removeFromProduct_inventory(_ values: NSSet)

}

extension Product : Identifiable {

}
