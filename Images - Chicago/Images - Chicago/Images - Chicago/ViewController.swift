//
//  ViewController.swift
//  Images - Chicago
//
//  Created by Xiaoping Jia on 1/14/16.
//  Copyright © 2016 DePaul University. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var image: UIImageView!
    
    @IBAction func buttonPressed(sender: UIButton) {
        if let name = sender.currentTitle {
            image.image = UIImage(named: name)
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

