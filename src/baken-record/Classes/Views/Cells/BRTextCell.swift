//
//  BRTextCell.swift
//  baken-record
//
//  Created by 井谷 裕紀 on 2015/09/28.
//  Copyright © 2015年 hiroki-itani. All rights reserved.
//

import UIKit

class BRTextCell: UITableViewCell {

    @IBOutlet weak var textField: UITextField!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        selectionStyle = .None
        let accessoryView = BRCustomAccessoryView()
        accessoryView.closeClosure = {
            [weak self] in
            self?.textField.resignFirstResponder()
        }
        textField.inputAccessoryView = accessoryView
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
