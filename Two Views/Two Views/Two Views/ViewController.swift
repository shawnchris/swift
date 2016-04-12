//
//  ViewController.swift
//  Two Views
//
//  Created by Xiaoping Jia on 1/26/16.
//  Copyright © 2016 DePaul University. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func buttonPressed(sender: UIButton) {
        let title = "An App with Two Scenes"
        let message = "Your are in the blue scene"
        let alertController =
            UIAlertController(title: title,
                message: message,
                preferredStyle: .Alert)
        
        var actions: [UIAlertAction] = []
        
        let cancelAction =
            UIAlertAction(title: "I don't care!",
                style: .Cancel,
                handler: nil)
        let okayAction =
            UIAlertAction(title: "Okay, got it!",
                style: .Default,
                handler: nil)
        switch sender.currentTitle ?? "" {
        case "Simple": actions += [ okayAction ]
        case "Okay / Cancel": actions += [ cancelAction, okayAction ]
        case "More Choices":
            let choiceOneAction =
            UIAlertAction(title: "Choice One",
                style: .Default,
                handler: nil)
            let choiceTwoAction =
            UIAlertAction(title: "Choice Two",
                style: .Default,
                handler: nil)
            actions += [ cancelAction, choiceOneAction, choiceTwoAction, okayAction ]
        case "Text Entry":
            var text : UITextField? = nil
            // Add the text field for text entry.
            alertController.addTextFieldWithConfigurationHandler { textField in
                // If you need to customize the text field, you can do so here.
                text = textField
                textField.secureTextEntry = true
            }
            let textAction =
                UIAlertAction(title: "Okay, got it!",
                    style: .Default) { _ in
                        NSLog("You entered: \(text?.text ?? "")")
            }
            actions += [ textAction ]
        default:
            actions += [ cancelAction ]
        }
        
        for action in actions {
            alertController.addAction(action)
        }
        presentViewController(alertController,
            animated: true,
            completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

