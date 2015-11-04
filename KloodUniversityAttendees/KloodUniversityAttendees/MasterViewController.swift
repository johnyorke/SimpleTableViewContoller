//
//  MasterViewController.swift
//  KloodUniversityAttendees
//
//  Created by John Yorke on 04/11/2015.
//  Copyright © 2015 John Yorke. All rights reserved.
//

import UIKit

class MasterViewController: UITableViewController {
    
    //MARK: Required
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return howManySectionsInTable()
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return howManyCellsInSection(section)
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = textForCellNumber(indexPath.row)
        return cell
    }
    
    //MARK: Abstraction
    
    func howManySectionsInTable() -> Int {
        return 1
    }
    
    func howManyCellsInSection(section : Int) -> Int {
        return 2
    }
    
    func textForCellNumber(number : Int) -> String {
        return "Hi!"
    }
    
}

