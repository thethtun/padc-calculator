//
//  CalculationHistoryTableViewCell.swift
//  padc-calculator
//
//  Created by Thet Htun on 8/11/19.
//  Copyright © 2019 padc-cal. All rights reserved.
//

import UIKit

protocol HistoryActionDelgate {
    func removeItem(index : Int)
}

class CalculationHistoryTableViewCell: UITableViewCell {

    @IBOutlet weak var labelTotal : UILabel!
    var object : CalculationHistory?
    var delegate : HistoryActionDelgate?
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    static var identifier : String {
        return String(describing : self) //CalculationHistoryTableViewCell
    }
    
    @IBAction func onClickRemoveFromList(_ sender : Any) {
        delegate?.removeItem(index: object?.id ?? 1)
    }

}
