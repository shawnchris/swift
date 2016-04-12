//
//  ViewController.swift
//  Drawing Pad
//
//  Created by Xiaoping Jia on 5/14/15.
//  Copyright (c) 2015 DePaul University. All rights reserved.
//

import UIKit

enum ShapeType: String {
    case Line = "Line"
    case Ellipse = "Ellipse"
    case Rectangle = "Rectangle"
    case FilledEllipse = "Filled Ellipse"
    case FilledRectangle = "Filled Rectangle"
    case Scribble = "Scribble"
}

let shapes: [ShapeType] = [ .Line, .Ellipse, .Rectangle, .FilledEllipse, .FilledRectangle, .Scribble ]

class ViewController: UIViewController {
    
    
    @IBOutlet var colorButtons: [UIButton]!
    @IBOutlet weak var canvas: CanvasView!
    @IBOutlet weak var shapeButton: ShapeButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    @IBAction func selectColor(sender: UIButton) {
        UIView.animateWithDuration(0.5, delay: 0.0,
            usingSpringWithDamping: CGFloat(0.25),
            initialSpringVelocity: CGFloat(0.25),
            options: UIViewAnimationOptions.CurveEaseInOut, animations: {
            for button in self.colorButtons {
                button.frame.origin.y = self.view.bounds.height - 58
            }
            sender.frame.origin.y -= 20
        }, completion: nil)
        canvas.color = sender.backgroundColor!
        shapeButton.color = sender.backgroundColor!
    }
    
    @IBAction func selectShape(sender: ShapeButton) {
        let title = "Select Shape"
        let alertController = UIAlertController(title: title, message: nil, preferredStyle: .ActionSheet)
        
        for shape in shapes {
            let action = UIAlertAction(title: shape.rawValue, style: .Default) { action in
                sender.shape = shape
                self.canvas.shape = shape
            }
            alertController.addAction(action)
        }
        presentViewController(alertController, animated: true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

