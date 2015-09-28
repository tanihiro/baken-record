//
//  BRMoneyCell.swift
//  baken-record
//
//  Created by 井谷 裕紀 on 2015/09/28.
//  Copyright © 2015年 hiroki-itani. All rights reserved.
//

import UIKit

class BRMoneyCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        selectionStyle = .None
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
