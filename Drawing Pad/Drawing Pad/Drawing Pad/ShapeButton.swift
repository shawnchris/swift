//
//  ShapeButton.swift
//  Drawing Pad
//
//  Created by Xiaoping Jia on 5/15/15.
//  Copyright (c) 2015 DePaul University. All rights reserved.
//

import UIKit

class ShapeButton: UIButton {

    var shape: ShapeType = .Line {
        didSet {
            setNeedsDisplay()
        }
    }

    var color: UIColor = UIColor.blueColor() {
        didSet {
            setNeedsDisplay()
        }
    }
    
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
        let context = UIGraphicsGetCurrentContext()
        CGContextSetStrokeColorWithColor(context, color.CGColor)
        CGContextSetFillColorWithColor(context, color.CGColor)
        CGContextSetLineWidth(context, 2)
        
        let x1: CGFloat = 5
        let y1: CGFloat = 5
        let x2: CGFloat = frame.width - 5
        let y2: CGFloat = frame.height - 5
        let rect = CGRect(x: x1, y: y1 + 5, width: frame.width - 10, height: frame.height - 20)
        switch shape {
        case .Line:
            CGContextMoveToPoint(context, x1, y1)
            CGContextAddLineToPoint(context, x2, y2)
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
            CGContextMoveToPoint(context, x1, y1)
            CGContextAddCurveToPoint(context,
                x1 + 80, y1 - 10,           // the 1st control point
                x2 - 80, y2 + 10,           // the 2nd control point
                x2, y2)           // the end point
            CGContextStrokePath(context)
        }
    }


}
