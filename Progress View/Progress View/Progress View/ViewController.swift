//
//  ViewController.swift
//  Progress View
//
//  Created by Xiaoping Jia on 2/5/16.
//  Copyright © 2016 DePaul University. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var indicator: UIActivityIndicatorView!
    
    @IBOutlet weak var progress: UIProgressView!
    
    @IBOutlet weak var label: UILabel!
    
    @IBAction func start(sender: UIButton) {
        indicator.startAnimating()
        let queue = dispatch_get_global_queue(Int(QOS_CLASS_BACKGROUND.rawValue), 0)
        dispatch_async(queue) {
            for i in 0 ... 100 {
                dispatch_async(dispatch_get_main_queue()) {
                    self.progress.progress = Float(i) / 100
                    self.label.text = "\(i)%"
                    if (i == 100) {
                        self.indicator.stopAnimating()
                    }
                }
                usleep(100_000) // microseconds
            }
        }
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        label.text = "0%"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

