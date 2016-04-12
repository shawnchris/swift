//
//  QuartzView.swift
//  Quartz Demo
//
//  Created by Xiaoping Jia on 5/14/15.
//  Copyright (c) 2015 DePaul University. All rights reserved.
//

import UIKit

class QuartzView: UIView {

    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code

        // Drawing lines
        let context = UIGraphicsGetCurrentContext()

        CGContextMoveToPoint(context, 20, 40)
        CGContextAddLineToPoint(context, 120, 90)
        CGContextStrokePath(context)
    
        CGContextSetLineWidth(context, 4)
        CGContextMoveToPoint(context, 60, 40)
        CGContextAddLineToPoint(context, 160, 90)
        CGContextStrokePath(context)

        // dashed lines
        let shortDash : [CGFloat] = [ 4, 4 ]
        CGContextSetLineDash(context, 0, shortDash, 2)
        CGContextMoveToPoint(context, 100, 40)
        CGContextAddLineToPoint(context, 200, 90)
        CGContextStrokePath(context)
        
        CGContextSetLineWidth(context, 2)
        let longDash : [CGFloat] = [ 8, 2 ]
        CGContextSetLineDash(context, 0, longDash, 2)
        CGContextMoveToPoint(context, 140, 40)
        CGContextAddLineToPoint(context, 240, 90)
        CGContextStrokePath(context)

        // Drawing ovals and circles
        CGContextSetStrokeColorWithColor(context, UIColor.blueColor().CGColor)
        CGContextSetFillColorWithColor(context, UIColor.redColor().CGColor)
        CGContextSetLineDash(context, 0, nil, 0)
        
        let rect1 = CGRect(x: 20, y: 100, width: 80, height: 60)
        CGContextStrokeEllipseInRect(context, rect1)
        
        CGContextSetLineWidth(context, 4)
        let rect2 = CGRect(x: 120, y: 100, width: 80, height: 60)
        CGContextFillEllipseInRect(context, rect2)
        CGContextStrokeEllipseInRect(context, rect2)
        
        let rect3 = CGRect(x: 220, y: 100, width: 60, height: 60)
        CGContextFillEllipseInRect(context, rect3)
        
        // Drawing rectangles and squares
        CGContextSetStrokeColorWithColor(context, UIColor.greenColor().CGColor)
        CGContextSetFillColorWithColor(context, UIColor.yellowColor().CGColor)
        CGContextSetLineWidth(context, 2)
        
        let rect4 = CGRect(x: 20, y: 180, width: 80, height: 60)
        CGContextStrokeRect(context, rect4)
        
        CGContextSetLineWidth(context, 4)
        let rect5 = CGRect(x: 120, y: 180, width: 80, height: 60)
        CGContextFillRect(context, rect5)
        CGContextStrokeRect(context, rect5)
        
        let rect6 = CGRect(x: 220, y: 180, width: 60, height: 60)
        CGContextFillRect(context, rect6)

        // Drawing path
        CGContextSetStrokeColorWithColor(context, UIColor.blueColor().CGColor)
        CGContextSetLineWidth(context, 2)
        
        CGContextMoveToPoint(context, 100, 250)
        CGContextAddLineToPoint(context, 150, 300)
        CGContextAddLineToPoint(context, 100, 350)
        CGContextAddLineToPoint(context, 50, 300)
        CGContextClosePath(context)
        CGContextStrokePath(context)
        
        // Drawing an arc
        CGContextAddArc(context,
            250, 300,           // the center
            50,                 // the radius
            0, CGFloat(M_PI),   // the start and end angles
            1)                  // counter-clockwise
        CGContextStrokePath(context)
        
        // Drawing a quadratic Bézier curve
        
        CGContextMoveToPoint(context, 20, 350)
        CGContextAddQuadCurveToPoint(context,
            100, 450,           // the control point
            170, 350)           // the end point
        CGContextStrokePath(context)
        
        // Drawing a cubic Bézier curve
        CGContextMoveToPoint(context, 170, 400)
        CGContextAddCurveToPoint(context,
            220, 420,           // the 1st control point
            270, 330,           // the 2nd control point
            320, 350)           // the end point
        CGContextStrokePath(context)
        
        // Drawing an image
        let image = UIImage(named: "Chicago")
        let rect = CGRect(x: 20, y: 420, width: 150, height: 100)
        //image?.drawAtPoint(CGPoint(x: 20, y: 420))  // draw at full size 
        image?.drawInRect(rect)

        // Drawing text
        let text: NSString =  "Hello Quartz 2D!"
        text.drawAtPoint(CGPoint(x: 20, y: 540), withAttributes: nil) // top-left of text
        
        let textAttr = [
            NSForegroundColorAttributeName : UIColor.magentaColor(),
            NSFontAttributeName : UIFont(name: "Papyrus", size: 24)!
        ]
        text.drawAtPoint(CGPoint(x: 20, y: 560), withAttributes: textAttr)
    }

}
