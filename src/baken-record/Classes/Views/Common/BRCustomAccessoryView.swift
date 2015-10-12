//
//  BRCustomAccessoryView.swift
//  baken-record
//
//  Created by 井谷 裕紀 on 2015/10/12.
//  Copyright © 2015年 hiroki-itani. All rights reserved.
//

import UIKit

class BRCustomAccessoryView: UIView {

    @IBOutlet var contentView: UIView!
    @IBOutlet weak var closeButton: UIButton!
    
    var closeClosure: (() -> ())?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        bounds = CGRectMake(0, 0, UIScreen.mainScreen().bounds.width, 44)
        NSBundle.mainBundle().loadNibNamed("BRCustomAccessoryView", owner: self, options: nil)
        contentView.frame = bounds
        addSubview(contentView)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    @IBAction func tapCloseButton(sender: UIButton) {
        closeClosure?()
    }
}
