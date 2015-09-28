//
//  BRRecordViewController.swift
//  baken-record
//
//  Created by 井谷 裕紀 on 2015/09/28.
//  Copyright © 2015年 hiroki-itani. All rights reserved.
//

import UIKit

class BRRecordViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        title = "記録する"
        let closeButton = UIBarButtonItem(image: UIImage(named: "ico_close"), style: .Plain, target: self, action: "_touchCloseButton:");
        navigationItem.rightBarButtonItem = closeButton
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func _touchCloseButton(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }
}
