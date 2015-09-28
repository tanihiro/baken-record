//
//  BRCorseListViewController.swift
//  baken-record
//
//  Created by 井谷 裕紀 on 2015/09/28.
//  Copyright © 2015年 hiroki-itani. All rights reserved.
//

import UIKit

class BRCorseListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let corses = [
        ["札幌競馬場", "函館競馬場", "福島競馬場", "新潟競馬場", "東京競馬場", "中山競馬場", "中京競馬場", "京都競馬場", "阪神競馬場", "小倉競馬場"],
        ["帯広競馬場", "門別競馬場", "盛岡競馬場", "水沢競馬場", "浦和競馬場", "大井競馬場", "川崎競馬場", "船橋競馬場", "名古屋競馬場", "笠松競馬場", "金沢競馬場", "園田競馬場", "姫路競馬場", "高知競馬場", "佐賀競馬場"]
    ]
    @IBOutlet weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        title = "競馬場を選択"
        
        tableView.delegate = self
        tableView.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return corses.count
    }
    
    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if (section == 0) {
            return "中央競馬"
        } else {
            return "地方競馬"
        }
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return corses[section].count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier("cell")
        if cell == nil {
            cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "cell")
        }
        cell!.textLabel?.text = corses[indexPath.section][indexPath.row]
        
        return cell!
    }
}
