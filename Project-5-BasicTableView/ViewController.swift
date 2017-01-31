//
//  ViewController.swift
//  Project-5-BasicTableView
//
//  Created by Nano Degree on 31/01/2017.
//  Copyright © 2017 Swift Pakistan. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITableViewDelegate , UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    var items: [String] = ["IronMan", "Batman", "SuperMan"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        tableView = UITableView(frame: CGRectMake(0, 65, 375, 600), style: .plain)
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
        tableView.allowsSelectionDuringEditing = true
        tableView.dataSource = self
        tableView.delegate = self;
        self.view.addSubview(tableView)
    }
    
//    func numberOfSections(in tableView: UITableView) -> Int {
//        return 1
//    }
//    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        
        cell.textLabel?.text = items[indexPath.row]
//        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
        cell.accessoryType = .disclosureIndicator
        
        return cell
    }
    
    
}


