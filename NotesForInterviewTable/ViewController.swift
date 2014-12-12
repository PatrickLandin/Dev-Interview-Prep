//
//  ViewController.swift
//  NotesForInterviewTable
//
//  Created by Patrick Landin on 12/11/14.
//  Copyright (c) 2014 Patrick Landin. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    var people = [Person]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var pat = Person()
        pat.name = "Patrick"
        var tina = Person()
        tina.name = "Tina"
        
        self.people = [pat, tina]
        
        self.tableView.dataSource = self
        self.tableView.delegate = self

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.people.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("PERSON_CELL", forIndexPath: indexPath) as UITableViewCell
        
        var personToDisplay = self.people[indexPath.row]
        cell.textLabel.text = personToDisplay.name
        
        return cell
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "SHOW_DETAIL" {
            let detailViewController = segue.destinationViewController as DetailViewController
            let selectedIndexPath = self.tableView.indexPathForSelectedRow()
            var personToPass = self.people[selectedIndexPath!.row]
            detailViewController.selectedPerson = personToPass
        }
    }


}

