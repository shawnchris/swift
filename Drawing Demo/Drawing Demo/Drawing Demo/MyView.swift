//
//  MyView.swift
//  Drawing Demo
//
//  Created by Xiaoping Jia on 5/18/15.
//  Copyright (c) 2015 DePaul University. All rights reserved.
//

import UIKit

class MyView: UIView {

    
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
        UIColor.grayColor().set()
        UIRectFill(bounds);
        
        let rect = CGRect(x: 50, y: 50, width: 200, height: 300)
        
        UIColor.redColor().set()
        UIRectFill(rect);
        
        UIColor.blackColor().set()
        UIRectFrame(rect)
    }

}
