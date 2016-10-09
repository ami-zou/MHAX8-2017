//
//  FirstViewController.swift
//  MATA
//
//  Created by Ami Zou on 10/9/16.
//  Copyright © 2016 MHacks8. All rights reserved.
//

import UIKit

class FilterViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var CategoryTable: UITableView!
    
    @IBOutlet weak var DatePicker: UIDatePicker!
    
    @IBOutlet weak var FromDate: UILabel!
    @IBOutlet weak var ToDate: UILabel!
    
    @IBAction func ClikedFrom(_ sender: UIButton) {
        FromDate.text = DateFormatter.localizedString(from: DatePicker.date, dateStyle: DateFormatter.Style.long, timeStyle: DateFormatter.Style.none)
    }
    
    @IBAction func ClickedTo(_ sender: UIButton) {
        ToDate.text = DateFormatter.localizedString(from: DatePicker.date, dateStyle: DateFormatter.Style.long, timeStyle: DateFormatter.Style.none)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        CategoryTable.register(UINib(nibName:"CategoryTableViewCell", bundle:nil), forCellReuseIdentifier: "CategoryCustomizedCell")
        
        CategoryTable.delegate = self
        CategoryTable.dataSource = self
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCustomizedCell") as! CategoryTableViewCell
        return cell
    }

    
    public func tableView(_ tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 44
    }

    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int)-> Int{
        return 8
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

//extension UIViewController: UITableViewDelegate, UITableViewDataSource{
//    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCustomizedCell")
//        
//    }
//
//}
