//
//  BRCustomTextView.swift
//  baken-record
//
//  Created by 井谷 裕紀 on 2015/09/28.
//  Copyright © 2015年 hiroki-itani. All rights reserved.
//

import UIKit

class BRCustomTextView: UITextView {

    lazy var placeHolderLabel: UILabel = UILabel()
    var placeHolderColor: UIColor = UIColor.lightGrayColor()
    @IBInspectable var placeHolder: String?
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    deinit {
        NSNotificationCenter.defaultCenter().removeObserver(self)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "textFocus:", name: UITextViewTextDidBeginEditingNotification, object: self)
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "textBlur:", name: UITextViewTextDidEndEditingNotification, object: self)
    }
    
    override func drawRect(rect: CGRect) {
        if let text = placeHolder {
            placeHolderLabel.frame = CGRectMake(0, 0, 0, 0)
            placeHolderLabel.lineBreakMode = NSLineBreakMode.ByWordWrapping
            placeHolderLabel.numberOfLines = 0
            placeHolderLabel.font = font
            placeHolderLabel.backgroundColor = UIColor.clearColor()
            placeHolderLabel.textColor = placeHolderColor
            placeHolderLabel.hidden = true
            
            placeHolderLabel.text = text
            placeHolderLabel.sizeToFit()
            addSubview(placeHolderLabel)
        }
        
        sendSubviewToBack(placeHolderLabel)
        
        if text.utf16.count == 0 && placeHolder != nil {
            placeHolderLabel.hidden = false
        }
        
        super.drawRect(rect)
    }
    
    func textFocus(notification: NSNotification) {
        if placeHolder == nil {
            return
        }
        placeHolderLabel.hidden = true
    }
    
    func textBlur(notification: NSNotification) {
        if placeHolder == nil {
            return
        }
        if text.characters.count == 0 {
            placeHolderLabel.hidden = false
        }
    }

}
