//
//  CanvasView.swift
//  Drawing Pad
//
//  Created by Xiaoping Jia on 5/14/15.
//  Copyright (c) 2015 DePaul University. All rights reserved.
//

import UIKit

/*
    This program is for Xcode 6.3 and Swift 1.2
*/


class CanvasView: UIView {

    var shape: ShapeType = .Line
    var color: UIColor = UIColor.blueColor()
    var first :CGPoint = CGPointZero
    var last  :CGPoint = CGPointZero
    var points: [CGPoint] = []
    
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
        let context = UIGraphicsGetCurrentContext()
        CGContextSetStrokeColorWithColor(context, color.CGColor)
        CGContextSetFillColorWithColor(context, color.CGColor)
        
        let rect = CGRect(x: first.x, y: first.y, width: last.x - first.x, height: last.y - first.y)
        switch shape {
        case .Line:
            CGContextMoveToPoint(context, first.x, first.y)
            CGContextAddLineToPoint(context, last.x, last.y)
            CGContextStrokePath(context)
        case .Ellipse:
            CGContextStrokeEllipseInRect(context, rect)
        case .Rectangle:
            CGContextStrokeRect(context, rect)
        case .FilledEllipse:
            CGContextFillEllipseInRect(context, rect)
        case .FilledRectangle:
            CGContextFillRect(context, rect)
        case .Scribble:
            CGContextMoveToPoint(context, first.x, first.y)
            for p in points {
                CGContextAddLineToPoint(context, p.x, p.y)
            }
            CGContextStrokePath(context)
        }
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        if let touch = touches.first {
            first = touch.locationInView(self)
            last = first
            points.removeAll(keepCapacity: true)
            if shape == .Scribble {
                points.append(first)
            }
            setNeedsDisplay()
        }
    }
    
    override func touchesMoved(touches: Set<UITouch>, withEvent event: UIEvent?) {
        if let touch = touches.first {
            last = touch.locationInView(self)
            if shape == .Scribble {
                points.append(last)
            }
            setNeedsDisplay()
        }
    }
    
    override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?) {
        if let touch = touches.first {
            last = touch.locationInView(self)
            if shape == .Scribble {
                points.append(last)
            }
            setNeedsDisplay()
        }
    }
    
    override func touchesCancelled(touches: Set<UITouch>?, withEvent event: UIEvent?) {
    }

}
