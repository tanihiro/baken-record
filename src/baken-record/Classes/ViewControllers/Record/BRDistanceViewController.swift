//
//  BRDistanceViewController.swift
//  baken-record
//
//  Created by 井谷 裕紀 on 2015/09/29.
//  Copyright © 2015年 hiroki-itani. All rights reserved.
//

import UIKit

class BRDistanceViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let distances = [
        ["1000m", "1200m", "1400m", "1600m", "1800m", "2000m", "2200m", "2400m", "2500m", "3000m", "3200m", "3600m"]
    ]

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        tableView.delegate = self
        tableView.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return distances.count
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return distances[section].count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier("cell")
        if cell == nil {
            cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "cell")
        }
        cell!.textLabel?.text = distances[indexPath.section][indexPath.row]
        
        return cell!
    }
    
}