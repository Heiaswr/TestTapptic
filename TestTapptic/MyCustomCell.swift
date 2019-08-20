//
//  MyCustomCell.swift
//  TestTapptic
//
//  Created by Apptree DEV on 18/08/2019.
//  Copyright © 2019 Apptree DEV. All rights reserved.
//

import UIKit

class MyCustomCell: UITableViewCell {

    @IBOutlet weak var unitMeasure: UILabel!
    @IBOutlet weak var isRunningSwitch: UISwitch!
    @IBOutlet weak var toolName: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        
        // Initialization code
    }
    
    
    
    

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
