//
//  TouchView.swift
//  Multi-Touch Demo
//
//  Created by Xiaoping Jia on 2/25/16.
//  Copyright © 2016 DePaul University. All rights reserved.
//

import UIKit

class TouchView: UIView {

    var points : [CGPoint] = []
    var message : String = "Touch view"
    var tapMessage : String = ""
    
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
        (message as NSString).drawAtPoint(CGPointMake(20, 20), withAttributes: nil)
        (tapMessage as NSString).drawAtPoint(CGPointMake(20, 40), withAttributes: nil)
        
        let context = UIGraphicsGetCurrentContext()
        CGContextSetFillColorWithColor(context, UIColor.orangeColor().CGColor)
        let r: CGFloat = 10
        for p in points {
            let rect = CGRect(x: p.x - r, y: p.y - r, width: 2 * r, height: 2 * r)
            CGContextFillEllipseInRect(context, rect)
        }
    }
    
    var timer: NSTimer?
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        handleTouches("touchBegan", touches: touches)
        tapMessage = ""
        if let touch = touches.first {
            if touch.tapCount >= 2 {
                timer?.invalidate()
            }
        }
    }
    
    override func touchesMoved(touches: Set<UITouch>, withEvent event: UIEvent?) {
        handleTouches("touchMoved", touches: touches)
    }
    
    override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?) {
        handleTouches("touchEnded", touches: touches)
        if let touch = touches.first {
            if touch.tapCount == 2 {
                handleDoubleTap()
            } else {
                timer = NSTimer.scheduledTimerWithTimeInterval(0.3,
                    target: self, selector: "handleSingleTap",
                    userInfo: nil, repeats: false)
            }
        }
        NSTimer.scheduledTimerWithTimeInterval(2,
            target: self, selector: "clearTouches",
            userInfo: nil, repeats: false)
    }
    
    override func touchesCancelled(touches: Set<UITouch>?, withEvent event: UIEvent?) {
        handleTouches("touchCancelled", touches: touches)
    }
    
    func handleTouches(method: String, touches: Set<UITouch>?) {
        message = method + "[\(touches?.count ?? 0)]:"
        points.removeAll(keepCapacity: true)
        if let touches = touches {
            for touch in touches {
                let p = touch.locationInView(self)
                message += " (\(p.x),\(p.y))"
                points.append(p)
            }
        }
        setNeedsDisplay()
    }
    
    func handleSingleTap() {
        tapMessage = "Single tap!"
        print("Single tap!")
        setNeedsDisplay()
    }
    
    func handleDoubleTap() {
        tapMessage = "Double tap!!"
        print("Double tap!!")
        setNeedsDisplay()
    }
    
    func clearTouches() {
        message = ""
        tapMessage = ""
        points.removeAll(keepCapacity: true)
        setNeedsDisplay()
    }

}
