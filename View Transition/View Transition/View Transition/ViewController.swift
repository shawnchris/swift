//
//  ViewController.swift
//  View Transition
//
//  Created by Xiaoping Jia on 2/5/16.
//  Copyright © 2016 DePaul University. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let container = UIView()
    let big_ben = UIImageView(image: UIImage(named: "Big Ben"))
    let eiffel = UIImageView(image: UIImage(named: "Eiffel"))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let w = view.bounds.width - 100
        let h = view.bounds.height - 200
        container.frame = CGRect(x: 50, y: 150, width: w, height: h)
        view.addSubview(container)
        
        big_ben.frame = CGRect(x: 0, y: 0, width: w, height: h)
        eiffel.frame = big_ben.frame
        
        container.addSubview(eiffel)
    }
    
    @IBAction func changeView(sender: UIButton) {
        // set a transition style
        var transitionOptions = UIViewAnimationOptions.TransitionNone
        if let title = sender.currentTitle {
            switch title {
            case "Curl Down":
                transitionOptions = .TransitionCurlDown
            case "Curl Up":
                transitionOptions = .TransitionCurlUp
            case "Dissolve":
                transitionOptions = .TransitionCrossDissolve
            case "Flip Left":
                transitionOptions = .TransitionFlipFromLeft
            case "Flip Right":
                transitionOptions = .TransitionFlipFromRight
            case "Flip Top":
                transitionOptions = .TransitionFlipFromTop
            case "Flip Bottom":
                transitionOptions = .TransitionFlipFromBottom
            default:
                transitionOptions = .TransitionCurlUp
            }
        }
        
        let view1 = big_ben.superview != nil ? big_ben : eiffel
        let view2 = big_ben.superview != nil ? eiffel : big_ben
        
        UIView.transitionWithView(self.container, duration: 2.0, options: transitionOptions, animations: {
            view1.removeFromSuperview()
            self.container.addSubview(view2)
            }, completion: nil)
        
        /*
        // The alternative version
        UIView.transitionFromView(view1, toView: view2,
        duration: 2.0, options: transitionOptions,
        completion: nil)
        */
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

