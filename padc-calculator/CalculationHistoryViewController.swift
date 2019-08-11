//
//  CalculationHistoryViewController.swift
//  padc-calculator
//
//  Created by Thet Htun on 8/11/19.
//  Copyright © 2019 padc-cal. All rights reserved.
//

import UIKit

class CalculationHistoryViewController: UIViewController {

    @IBOutlet weak var tableView : UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        //Step 1 - Set Delegate
        tableView.dataSource = self
    }
    
}

//Step 2 - Conform to protocol
extension CalculationHistoryViewController : UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: CalculationHistoryTableViewCell.identifier, for: indexPath) as? CalculationHistoryTableViewCell else {
            return UITableViewCell()
        }

        return cell
    }
    
}

extension CalculationHistoryViewController : UITableViewDelegate {

}
