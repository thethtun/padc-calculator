//
//  CalculationHistoryViewController.swift
//  padc-calculator
//
//  Created by Thet Htun on 8/11/19.
//  Copyright © 2019 padc-cal. All rights reserved.
//

import UIKit

struct CalculationHistory {
    var id : Int
    var value : String
    
}

var history = [CalculationHistory]()

class CalculationHistoryViewController: UIViewController
    {

    @IBOutlet weak var tableView : UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        tableView.dataSource = self
//        tableView.delegate = self
        
    }
    
}

extension CalculationHistoryViewController : HistoryActionDelgate {
    func removeItem(index: Int) {
        for item in history {
            if item.id == index {
                history.remove(at: index - 1)
                tableView.reloadData()
            }
        }
    }
}

extension CalculationHistoryViewController : UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return history.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: CalculationHistoryTableViewCell.identifier, for: indexPath) as? CalculationHistoryTableViewCell else {
            return UITableViewCell()
        }
        
        let calculationHistory = history[indexPath.row] //CalculationHistory
        let value = calculationHistory.value
        cell.labelTotal.text = "Total \(value)"
        cell.object = calculationHistory
        cell.delegate = self
        return cell
    }
 
}
//
//extension CalculationHistoryViewController : UITableViewDelegate {
//
//    func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
//        return [.init(style: .destructive, title: "Delete", handler: { (tableViewRowAction, indexPath) in
//            if tableViewRowAction.title == "Delete" {
////                history.remove(at: indexPath.row)
//                tableView.reloadData()
//            }
//        })]
//    }
//
//}
