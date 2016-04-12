//
//  ViewController.swift
//  Images - Stack View
//
//  Created by Xiaoping Jia on 1/18/16.
//  Copyright © 2016 DePaul University. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var image: UIImageView!
    
    @IBAction func buttonPressed(sender: UIButton) {
         image.image = UIImage(named: sender.currentTitle!)
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

