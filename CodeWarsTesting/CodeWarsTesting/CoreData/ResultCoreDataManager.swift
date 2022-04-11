//
//  ResultCoreDataManeger.swift
//  CodeWarsTesting
//
//  Created by Максим Неверовский on 11.04.2022.
//

import Foundation
import CoreData

struct ResultCoreDataManager {
    
    let mainContext: NSManagedObjectContext

        init(mainContext: NSManagedObjectContext = CoreDataManager.shared.mainContext) {
            self.mainContext = mainContext
        }
    
    func createResult(answer: String) {
        let result = Result(context: mainContext)
        result.test = answer
        
        do {
            try mainContext.save()
        } catch let error{
            print(error)
        }
    }
    
    func updateResult(answer: String?) {
        let request = Result.fetchRequest()
        let results = try? mainContext.fetch(request)
        if let result = results?.last{
            result.test = answer
        }
        do {
            try mainContext.save()
        } catch let error {
            print(error)
        }
    }
    
    func deleteLastResult() {
        let request = Result.fetchRequest()
        let results = try? mainContext.fetch(request)
        
        mainContext.delete((results?.last)!)
        do {
            try mainContext.save()
        } catch let error {
            print(error)
        }
    }
    
    func fetchResults() -> [Result]? {
        let request = Result.fetchRequest()
        do {
            let results = try mainContext.fetch(request)
            return results
        } catch let error {
            print(error)
        }
        return nil
    }
}
