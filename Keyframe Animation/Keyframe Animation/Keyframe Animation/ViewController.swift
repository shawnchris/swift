//
//  ViewController.swift
//  Keyframe Animation
//
//  Created by Xiaoping Jia on 2/5/16.
//  Copyright © 2016 DePaul University. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var delayOptions: UISegmentedControl!
    
    var objects: [UILabel] = []
    let colors = [ UIColor.blueColor(), UIColor.cyanColor(), UIColor.greenColor(), UIColor.orangeColor(), UIColor.magentaColor() ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        delayOptions.selectedSegmentIndex = 0
        
        var x: CGFloat = 20
        for i in 0..<5 {
            let label = UILabel()
            label.backgroundColor = colors[i]
            label.textColor = UIColor.whiteColor()
            label.textAlignment = .Center
            label.font = UIFont.systemFontOfSize(40)
            label.text = "\(i + 1)"
            label.frame = CGRect(x: x, y: view.bounds.height - 75, width: 50, height: 50)
            view.addSubview(label)
            objects.append(label)
            x += 70
        }
    }
    
    @IBAction func reset(sender: UIButton) {
        var x: CGFloat = 20
        for label in objects {
            label.frame = CGRect(x: x, y: view.bounds.height - 75, width: 50, height: 50)
            label.transform = CGAffineTransformMakeRotation(0)
            x += 70
        }
    }
    
    @IBAction func startAnimation(sender: UIButton) {
        let duration: Double = 2.0
        var delay: Double = 0.0
        let dt: Double = delayOptions.selectedSegmentIndex == 0 ? 0.0 : 2.0
        
        var x: CGFloat = 20
        UIView.animateWithDuration(duration, animations: {
            self.objects[0].frame = CGRect(x: x, y: 75, width: 50, height: 50)
            self.objects[0].transform = CGAffineTransformMakeRotation(CGFloat(M_PI))
        })
        
        x += 70
        delay += dt
        UIView.animateWithDuration(duration, delay: delay, options: .CurveEaseInOut, animations: {
            self.objects[1].frame = CGRect(x: x, y: 75, width: 50, height: 50)
            self.objects[1].transform = CGAffineTransformMakeRotation(CGFloat(M_PI / 2))
            }, completion: nil)
        
        x += 70
        delay += dt
        UIView.animateWithDuration(duration, delay: delay, options: .CurveEaseInOut, animations: {
            self.objects[2].frame = CGRect(x: x, y: 75, width: 50, height: 50)
            self.objects[2].transform = CGAffineTransformMakeRotation(CGFloat(2 * M_PI))
            }, completion: nil)
        
        x += 70
        delay += dt
        UIView.animateKeyframesWithDuration(duration, delay: delay, options:
            .CalculationModeLinear, animations: {
                self.objects[3].frame = CGRect(x: x, y: 75, width: 50, height: 50)
                
                UIView.addKeyframeWithRelativeStartTime(0, relativeDuration: 1/2, animations: {
                    self.objects[3].transform = CGAffineTransformMakeRotation(CGFloat(M_PI))
                })
                UIView.addKeyframeWithRelativeStartTime(1/2, relativeDuration: 1/2, animations: {
                    self.objects[3].transform = CGAffineTransformMakeRotation(CGFloat(2 * M_PI))
                })
            }, completion: nil)
        
        
        x += 70
        delay += dt
        UIView.animateKeyframesWithDuration(duration, delay: delay, options: .CalculationModeLinear, animations: {
            self.objects[4].frame = CGRect(x: x, y: 75, width: 50, height: 50)
            
            UIView.addKeyframeWithRelativeStartTime(0, relativeDuration: 1/3, animations: {
                self.objects[4].transform = CGAffineTransformMakeRotation(CGFloat(M_PI * 2 / 3))
            })
            UIView.addKeyframeWithRelativeStartTime(1/3, relativeDuration: 1/3, animations: {
                self.objects[4].transform = CGAffineTransformMakeRotation(CGFloat(M_PI * 4 / 3))
            })
            UIView.addKeyframeWithRelativeStartTime(2/3, relativeDuration: 1/3, animations: {
                self.objects[4].transform = CGAffineTransformMakeRotation(CGFloat(M_PI * 2))
            })
            }, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

