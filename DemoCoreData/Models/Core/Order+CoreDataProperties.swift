//
//  Order+CoreDataProperties.swift
//  DemoCoreData
//
//  Created by Khánh Vỹ Đinh on 21/06/2021.
//
//

import Foundation
import CoreData


extension Order {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Order> {
        return NSFetchRequest<Order>(entityName: "Order")
    }

    @NSManaged public var order_date: Date?
    @NSManaged public var order_detail: NSSet?
    @NSManaged public var user: User?

}

// MARK: Generated accessors for order_detail
extension Order {

    @objc(addOrder_detailObject:)
    @NSManaged public func addToOrder_detail(_ value: OrderDetail)

    @objc(removeOrder_detailObject:)
    @NSManaged public func removeFromOrder_detail(_ value: OrderDetail)

    @objc(addOrder_detail:)
    @NSManaged public func addToOrder_detail(_ values: NSSet)

    @objc(removeOrder_detail:)
    @NSManaged public func removeFromOrder_detail(_ values: NSSet)

}

extension Order : Identifiable {

}
