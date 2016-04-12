//
//  ViewController.swift
//  View Animation
//
//  Created by Xiaoping Jia on 2/5/16.
//  Copyright © 2016 DePaul University. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    enum Direction { case Up, Down }
    
    let soccer = UIImageView(image: UIImage(named: "soccer"))
    let basketball = UIImageView(image: UIImage(named: "basketball"))
    let volleyball = UIImageView(image: UIImage(named: "volleyball"))
    let tennis = UIImageView(image: UIImage(named: "tennis"))
    
    let size: CGFloat = 50
    var direction = Direction.Up
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let y: CGFloat = view.bounds.height - size * 2 // start from the bottom of the view
        var x: CGFloat = 25
        
        soccer.frame = CGRect(x: x, y: y, width: size, height: size)
        view.addSubview(soccer)
        
        x += (size + CGFloat(25))
        basketball.frame = CGRect(x: x, y: y, width: size, height: size)
        view.addSubview(basketball)
        
        x += (size + CGFloat(25))
        volleyball.frame = CGRect(x: x, y: y, width: size, height: size)
        view.addSubview(volleyball)
        
        x += (size + CGFloat(25))
        tennis.frame = CGRect(x: x, y: y, width: size, height: size)
        view.addSubview(tennis)
    }
    
    @IBAction func startAnimation(sender: UIButton) {
        let duration = 2.0  // 2 seconds
        
        var x: CGFloat = 25
        let y: CGFloat = direction == .Up ? size * 2 : view.bounds.height - size * 2
        direction = direction == .Up ? .Down : .Up
        
        UIView.animateWithDuration(duration, animations: {
            self.soccer.frame = CGRect(x: x, y: y, width: self.size, height: self.size)
        })
        
        x += (size + CGFloat(25))
        let optionEase = UIViewAnimationOptions.CurveEaseInOut
        UIView.animateWithDuration(duration, delay: 0.0, options: optionEase, animations: {
            self.basketball.frame = CGRect(x: x, y: y, width: self.size, height: self.size)
            }, completion: nil)
        
        x += (size + CGFloat(25))
        let optionsLinear = UIViewAnimationOptions.CurveLinear
        UIView.animateWithDuration(duration, delay: 0.0, options: optionsLinear, animations: {
            self.volleyball.frame = CGRect(x: x, y: y, width: self.size, height: self.size)
            }, completion: nil)
        
        
        let delay = 1.0 // 1 second
        let damping: CGFloat = 0.5
        let velocity: CGFloat = 0.5
        x += (size + CGFloat(25))
        UIView.animateWithDuration(duration, delay: delay, usingSpringWithDamping: damping, initialSpringVelocity: velocity, options: optionEase, animations: {
            self.tennis.frame = CGRect(x: x, y: y, width: self.size, height: self.size)
            }, completion: nil)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

