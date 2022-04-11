//
//  Result+CoreDataProperties.swift
//  CodeWarsTesting
//
//  Created by Максим Неверовский on 11.04.2022.
//
//

import Foundation
import CoreData


extension Result {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Result> {
        return NSFetchRequest<Result>(entityName: "Result")
    }

    @NSManaged public var test: String?

}

extension Result : Identifiable {

}
