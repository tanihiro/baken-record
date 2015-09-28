//
//  BRContainerViewController.swift
//  baken-record
//
//  Created by 井谷 裕紀 on 2015/09/27.
//  Copyright © 2015年 hiroki-itani. All rights reserved.
//

import UIKit

class BRContainerViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func touchRecordButton(sender: UIButton) {
        showRecord()
    }
    
    func showRecord() {
        let viewController = BRRecordViewController()
        let navigationController = UINavigationController(rootViewController: viewController)
        presentViewController(navigationController, animated: true, completion: nil)
    }
}
