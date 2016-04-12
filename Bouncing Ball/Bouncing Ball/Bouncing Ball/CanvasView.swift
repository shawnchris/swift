//
//  CanvasView.swift
//  Bouncing Ball
//
//  Created by Xiaoping Jia on 5/14/15.
//  Copyright (c) 2015 DePaul University. All rights reserved.
//

import UIKit

class CanvasView: UIView {

    var x: CGFloat = 0, y: CGFloat = 0, r: CGFloat = 25
    var velocity: CGFloat = 1
    var dx: CGFloat = 1, dy: CGFloat = 1
    
    var timer : NSTimer?
    
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
        let context = UIGraphicsGetCurrentContext()
        CGContextSetFillColorWithColor(context, UIColor.orangeColor().CGColor)
        let rect = CGRect(x: x - r, y: y - r, width: 2 * r, height: 2 * r)
        CGContextFillEllipseInRect(context, rect)
    }
    
    func start() {
        timer = NSTimer.scheduledTimerWithTimeInterval(1.0/60.0,
            target: self, selector: "update:", // you must have a colon on the end of the selector!
            userInfo: nil,
            repeats: true)
        x = bounds.width / 2
        y = bounds.height / 2
    }
    
    func stop() {
        timer?.invalidate()
    }
    
    func update(timer: NSTimer) {
        //println("x: \(x) y: \(y) w: \(bounds.width) h: \(bounds.height)")
        
        x += dx * velocity
        y += dy * velocity
        if x < r || x > bounds.width - r {
            dx = -dx
        }
        if y < r || y > bounds.height - r {
            dy = -dy
        }
        self.setNeedsDisplay()
    }

}
