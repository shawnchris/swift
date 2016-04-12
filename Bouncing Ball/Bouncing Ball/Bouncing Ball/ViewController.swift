//
//  ViewController.swift
//  Bouncing Ball
//
//  Created by Xiaoping Jia on 2/5/16.
//  Copyright © 2016 DePaul University. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var canvas: CanvasView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(animated: Bool) {
        canvas.start()
    }
    
    override func viewWillDisappear(animated: Bool) {
        canvas.stop()
    }
    
    @IBAction func velocityChanged(sender: UISlider) {
        canvas.velocity = CGFloat(sender.value)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

