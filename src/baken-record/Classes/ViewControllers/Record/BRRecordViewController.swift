//
//  BRRecordViewController.swift
//  baken-record
//
//  Created by 井谷 裕紀 on 2015/09/28.
//  Copyright © 2015年 hiroki-itani. All rights reserved.
//

import UIKit

class BRRecordViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    enum CellType: Int {
        case Money = 0, Date, RaceTitle, Corse, Distance, Grade, Type, Memo
    }
    
    var cellTypes: [[CellType]] = []

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let closeButton = UIBarButtonItem(image: UIImage(named: "ico_close"), style: .Plain, target: self, action: "_touchCloseButton:");
        navigationItem.rightBarButtonItem = closeButton
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.registerNib(UINib(nibName: "BRMoneyCell", bundle: nil), forCellReuseIdentifier: "BRMoneyCell")
        tableView.registerNib(UINib(nibName: "BRDataCell", bundle: nil), forCellReuseIdentifier: "BRDataCell")
        tableView.registerNib(UINib(nibName: "BRTextCell", bundle: nil), forCellReuseIdentifier: "BRTextCell")
        tableView.registerNib(UINib(nibName: "BRSegmentCell", bundle: nil), forCellReuseIdentifier: "BRSegmentCell")
        tableView.registerNib(UINib(nibName: "BRTextareaCell", bundle: nil), forCellReuseIdentifier: "BRTextareaCell")
        tableView.tableFooterView = UIView(frame: CGRectZero)

        
        cellTypes = [[.Money, .Date], [.RaceTitle, .Corse, .Distance, .Grade, .Type, .Memo]]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func _touchCloseButton(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return cellTypes.count
    }
    
    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 1 {
            return "詳細設定（オプション）"
        }
        return nil
    }
    
    
    func tableView(tableView: UITableView, estimatedHeightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cellTypes[section].count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        switch cellTypes[indexPath.section][indexPath.row] {
        case .Money:
            let cell = tableView.dequeueReusableCellWithIdentifier("BRMoneyCell") as! BRMoneyCell
            return cell
            
        case .Date:
            let cell = tableView.dequeueReusableCellWithIdentifier("BRDataCell") as! BRDataCell
            cell.label.text = "日付"
            return cell
            
        case .RaceTitle:
            let cell = tableView.dequeueReusableCellWithIdentifier("BRTextCell") as! BRTextCell
            cell.textField.placeholder = "レース名"
            return cell
            
        case .Corse:
            let cell = tableView.dequeueReusableCellWithIdentifier("BRDataCell") as! BRDataCell
            cell.label.text = "競馬場"
            return cell
            
        case .Distance:
            let cell = tableView.dequeueReusableCellWithIdentifier("BRDataCell") as! BRDataCell
            cell.label.text = "距離"
            return cell
            
        case .Grade:
            let cell = tableView.dequeueReusableCellWithIdentifier("BRDataCell") as! BRDataCell
            cell.label.text = "グレード"
            return cell
            
        case .Type:
            let cell = tableView.dequeueReusableCellWithIdentifier("BRSegmentCell") as! BRSegmentCell
            return cell
            
        case .Memo:
            let cell = tableView.dequeueReusableCellWithIdentifier("BRTextareaCell") as! BRTextareaCell
            return cell
        }
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        switch cellTypes[indexPath.section][indexPath.row] {
        case .Corse:
            let viewController = BRCorseListViewController()
            navigationController?.pushViewController(viewController, animated: true)
            return
        default:
            print("hoge")
        }
    }
}
