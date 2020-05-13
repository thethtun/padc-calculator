//
//  Repository.swift
//  padc-calculator-swift-ui
//
//  Created by Thet Htun on 5/12/20.
//  Copyright © 2020 thethtun. All rights reserved.
//

import Foundation
import SwiftUI
import Combine
import CoreData

class Repository : ObservableObject {
    
    static var shared = Repository()
    
    private init() {}
    
    func addNewHistory(data : String) {
        let context = CoreDataStack.shared.viewContext
        let entity = CalculationHistory(context: context)
        entity.id = UUID().uuidString
        entity.value = data
        
        do {
            try context.save()
        } catch {
            print("failed to save")
        }
    }
  
    func removeHistory(id : String) {
        let fetchRequest : NSFetchRequest<CalculationHistory> = CalculationHistory.fetchRequest()
        fetchRequest.predicate = NSPredicate(format: "id == %@", id)
        
        do {
            let context = CoreDataStack.shared.viewContext
            let results = try context.fetch(fetchRequest)
            if !results.isEmpty {
                results.forEach{ item in
                    context.delete(item)
                }
                try? context.save()
            }
        } catch {
            print("Failed to delete: \(error.localizedDescription)")
        }

    }
}
