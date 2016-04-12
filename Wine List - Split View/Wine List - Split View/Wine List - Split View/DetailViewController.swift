//
//  ViewController.swift
//  WineList - Navigation
//
//  Created by Xiaoping Jia on 4/30/15.
//  Copyright (c) 2015 DePaul University. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var descriptionLabel: UILabel!
    
    var wine: Wine?
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(animated: Bool) {
        navigationItem.leftBarButtonItem = splitViewController?.displayModeButtonItem()
        //navigationItem.leftBarButtonItem?.title = "Wine List"
        navigationItem.leftItemsSupplementBackButton = true
        if let w = wine {
            titleLabel.text = w.name
            descriptionLabel.text = w.longDescription
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

