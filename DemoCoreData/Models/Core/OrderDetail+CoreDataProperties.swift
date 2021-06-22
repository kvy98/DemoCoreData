//
//  OrderDetail+CoreDataProperties.swift
//  DemoCoreData
//
//  Created by Khánh Vỹ Đinh on 21/06/2021.
//
//

import Foundation
import CoreData


extension OrderDetail {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<OrderDetail> {
        return NSFetchRequest<OrderDetail>(entityName: "OrderDetail")
    }

    @NSManaged public var color: String?
    @NSManaged public var order_detail_quantity: Int16
    @NSManaged public var size: String?
    @NSManaged public var order: Order?
    @NSManaged public var product: Product?

}

extension OrderDetail : Identifiable {

}
