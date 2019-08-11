//
//  CalculationHistoryTableViewCell.swift
//  padc-calculator
//
//  Created by Thet Htun on 8/11/19.
//  Copyright © 2019 padc-cal. All rights reserved.
//

import UIKit

class CalculationHistoryTableViewCell: UITableViewCell {

    @IBOutlet weak var labelTotal : UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    static var identifier : String {
        return String(describing : self)
    }

}
