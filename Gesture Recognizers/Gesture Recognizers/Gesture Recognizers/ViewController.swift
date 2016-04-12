//
//  ViewController.swift
//  Gesture Recognizers
//
//  Created by Xiaoping Jia on 2/22/16.
//  Copyright © 2016 DePaul University. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var singleTapLabel: UILabel!
    
    @IBOutlet weak var doubleTapLabel: UILabel!
    
    @IBOutlet weak var panLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        for t in 1...3 {
            let singleTapRecognizer = UITapGestureRecognizer(target: self, action: "handleSingleTap:")
            singleTapRecognizer.numberOfTapsRequired = 1
            singleTapRecognizer.numberOfTouchesRequired = t
            view.addGestureRecognizer(singleTapRecognizer)
        
            let doubleTapRecognizer = UITapGestureRecognizer(target: self, action: "handleDoubleTap:")
            doubleTapRecognizer.numberOfTapsRequired = 2
            doubleTapRecognizer.numberOfTouchesRequired = t
            view.addGestureRecognizer(doubleTapRecognizer)
            singleTapRecognizer.requireGestureRecognizerToFail(doubleTapRecognizer)
        }
       
        let panRecognizer = UIPanGestureRecognizer(target: self, action: "handlePanGesture:")
        panRecognizer.minimumNumberOfTouches = 1
        panRecognizer.maximumNumberOfTouches = 3
        view.addGestureRecognizer(panRecognizer)
        
    }
        
    func handleSingleTap(sender: UITapGestureRecognizer) {
        let n = sender.numberOfTouches()
        var message = ""
        for i in 0 ..< n {
            message += " \(sender.locationOfTouch(i, inView: view))"
        }
        singleTapLabel.text = "Single tap at:" + message + "\nNumber of touches: \(n)"
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, Int64(3 * NSEC_PER_SEC)),
            dispatch_get_main_queue()) { self.singleTapLabel.text = "No single tap detected" }
    }
    
    func handleDoubleTap(sender: UITapGestureRecognizer) {
        let n = sender.numberOfTouches()
        var message = ""
        for i in 0 ..< n {
            message += " \(sender.locationOfTouch(i, inView: view))"
        }
        doubleTapLabel.text = "Double tap at:" + message + "\nNumber of touches: \(n)"
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, Int64(3 * NSEC_PER_SEC)),
            dispatch_get_main_queue()) { self.doubleTapLabel.text = "No double tap detected" }
    }

    func handlePanGesture(sender: UIPanGestureRecognizer) {
        let n = sender.numberOfTouches()
        var message = ""
        for i in 0 ..< n {
            message += " \(sender.locationOfTouch(i, inView: view))"
        }
        panLabel.text = "Pan gesture at:" + message + "\nNumber of touches: \(n)" +
            "\nTranslation: \(sender.translationInView(view))" +
            "\nVelocity: \(sender.velocityInView(view))"
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, Int64(3 * NSEC_PER_SEC)),
            dispatch_get_main_queue()) { self.panLabel.text = "No pan gesture detected" }
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

