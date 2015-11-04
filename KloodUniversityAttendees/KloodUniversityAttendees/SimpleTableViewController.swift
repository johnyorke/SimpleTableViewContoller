//
//  SimpleTableViewController.swift
//  KloodUniversityAttendees
//
//  Created by John Yorke on 04/11/2015.
//  Copyright © 2015 John Yorke. All rights reserved.
//

import Foundation
import UIKit

class SimpleTableViewController : MasterViewController {
    
    var people = [Person]()
    
    struct Person {
        let name : String
        let age : Int
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        people = [
            Person(name: "John", age: 29),
            Person(name: "Kyle", age: 26)
        ]
    }
    
    override func howManyCellsInSection(section: Int) -> Int {
        return people.count
    }
    
    override func textForCellNumber(number: Int) -> String {
        let person = people[number]
        let combinedString = person.name + " - " + String(person.age)
        return combinedString
    }
    
}