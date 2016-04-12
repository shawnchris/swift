//
//  ViewController.swift
//  Swipe Gestures
//
//  Created by Xiaoping Jia on 2/23/16.
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
        let h = view.bounds.height - 100
        container.frame = CGRect(x: 50, y: 50, width: w, height: h)
        view.addSubview(container)
        
        big_ben.frame = CGRect(x: 0, y: 0, width: w, height: h)
        eiffel.frame = big_ben.frame
        
        container.addSubview(eiffel)

        // Set up swipe gesture recognizers
        let upSwipeRecognizer = UISwipeGestureRecognizer(target: self, action: "handleUpSwipe:")
        upSwipeRecognizer.numberOfTouchesRequired = 1
        upSwipeRecognizer.direction = .Up
        view.addGestureRecognizer(upSwipeRecognizer)
        
        let downSwipeRecognizer = UISwipeGestureRecognizer(target: self, action: "handleDownSwipe:")
        downSwipeRecognizer.numberOfTouchesRequired = 1
        downSwipeRecognizer.direction = .Down
        view.addGestureRecognizer(downSwipeRecognizer)

        let horizontalSwipeRecognizer = UISwipeGestureRecognizer(target: self, action: "handleHorizontalSwipe:")
        horizontalSwipeRecognizer.numberOfTouchesRequired = 1
        horizontalSwipeRecognizer.direction = [ .Left, .Right ]
        view.addGestureRecognizer(horizontalSwipeRecognizer)
        
        let pinchGestureRecognizer = UIPinchGestureRecognizer(target: self, action: "handlePinch:")
        view.addGestureRecognizer(pinchGestureRecognizer)
    }
    
    func handleUpSwipe(sender: UISwipeGestureRecognizer) {
        let view1 = big_ben.superview != nil ? big_ben : eiffel
        let view2 = big_ben.superview != nil ? eiffel : big_ben
        UIView.transitionFromView(view1, toView: view2,
            duration: 2.0, options: .TransitionCurlUp,
            completion: nil)
    }

    func handleDownSwipe(sender: UISwipeGestureRecognizer) {
        let view1 = big_ben.superview != nil ? big_ben : eiffel
        let view2 = big_ben.superview != nil ? eiffel : big_ben
        UIView.transitionFromView(view1, toView: view2,
            duration: 2.0, options: .TransitionCurlDown,
            completion: nil)
    }
    
    func handleHorizontalSwipe(sender: UISwipeGestureRecognizer) {
        let view1 = big_ben.superview != nil ? big_ben : eiffel
        let view2 = big_ben.superview != nil ? eiffel : big_ben
        UIView.transitionWithView(self.container, duration: 2.0,
            options: .TransitionCrossDissolve,
            animations: {
            view1.removeFromSuperview()
            self.container.addSubview(view2)
            }, completion: nil)
    }
    
    func handlePinch(sender: UIPinchGestureRecognizer) {
        let s = sender.scale
        container.transform = CGAffineTransform(a: s, b: 0, c: 0, d: s, tx: 0, ty: 0)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

