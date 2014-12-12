//
//  DetailViewController.swift
//  NotesForInterviewTable
//
//  Created by Patrick Landin on 12/11/14.
//  Copyright (c) 2014 Patrick Landin. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    
    var selectedPerson = Person()

    override func viewDidLoad() {
        super.viewDidLoad()

        self.nameLabel.text = selectedPerson.name
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
