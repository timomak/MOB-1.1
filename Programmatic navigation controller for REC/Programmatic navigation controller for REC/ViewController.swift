//
//  ViewController.swift
//  Programmatic navigation controller for REC
//
//  Created by timofey makhlay on 10/21/18.
//  Copyright © 2018 Timofey Makhlay. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
let cellId = "cellId123123"
    
    let propertyList = [
        ["1","2","3","4"],
        ["9","8","7"]
    ]
    
    @objc func handleShowIndexPath() {
        print("Attempting reload animation of indexPath...")
        
        var indexPathsToReload = [IndexPath]()
        
        for index in propertyList.indices {
            let indexPath = IndexPath(row: index, section: 0)
            indexPathsToReload.append(indexPath)
        }
        tableView.reloadRows(at: indexPathsToReload, with: .middle)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Show IndexPath", style: .plain, target: self, action: #selector(handleShowIndexPath))
        
        navigationItem.title = "Properties"
        navigationController?.navigationBar.prefersLargeTitles = true
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellId)
    }
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let label = UILabel()
        label.text = "Header"
        label.backgroundColor = UIColor.lightGray
        return label
    }
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return propertyList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath)
        
//        let property = self.properties[indexPath.row]
        let property = propertyList[indexPath.row]
        
        
        cell.textLabel?.text = "\(property) Section: \(indexPath.section) Row: \(indexPath.row)"
        return cell
    }

}

