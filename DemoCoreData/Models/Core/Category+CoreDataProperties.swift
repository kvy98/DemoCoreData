//
//  Category+CoreDataProperties.swift
//  DemoCoreData
//
//  Created by Khánh Vỹ Đinh on 21/06/2021.
//
//

import Foundation
import CoreData


extension Category {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Category> {
        return NSFetchRequest<Category>(entityName: "Category")
    }

    @NSManaged public var cate_description: String?
    @NSManaged public var cate_name: String?
    @NSManaged public var child: NSSet?
    @NSManaged public var parent: Category?
    @NSManaged public var product: NSSet?

}

// MARK: Generated accessors for child
extension Category {

    @objc(addChildObject:)
    @NSManaged public func addToChild(_ value: Category)

    @objc(removeChildObject:)
    @NSManaged public func removeFromChild(_ value: Category)

    @objc(addChild:)
    @NSManaged public func addToChild(_ values: NSSet)

    @objc(removeChild:)
    @NSManaged public func removeFromChild(_ values: NSSet)

}

// MARK: Generated accessors for product
extension Category {

    @objc(addProductObject:)
    @NSManaged public func addToProduct(_ value: Product)

    @objc(removeProductObject:)
    @NSManaged public func removeFromProduct(_ value: Product)

    @objc(addProduct:)
    @NSManaged public func addToProduct(_ values: NSSet)

    @objc(removeProduct:)
    @NSManaged public func removeFromProduct(_ values: NSSet)

}

extension Category : Identifiable {

}
