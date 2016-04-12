//
//  ViewController.swift
//  Text Input
//
//  Created by Xiaoping Jia on 1/23/16.
//  Copyright © 2016 DePaul University. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textView: UITextView!
    
    @IBOutlet var textFields: [UITextField]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func editEnded(sender: UITextField) {
        sender.resignFirstResponder()
    }
    
    
    @IBAction func backgroundTouched(sender: UIControl) {
        for tf in textFields {
            tf.resignFirstResponder()
        }
        textView.resignFirstResponder()
    }
    
    @IBAction func clearAction() {
        for tf in textFields {
            tf.text = ""
        }
        textView.text = ""
    }
    
    let labels = [
        "Default",
        "URL",
        "Email",
        "Phone",
        "Number",
        "Decimal",
        "Password"
    ]
    
    @IBAction func doneAction() {
        var input : [Int:String] = [:]
        for tf in textFields {
            tf.resignFirstResponder()
            input[tf.tag] = tf.text ?? ""
        }
        
        var message = ""
        for (i, label) in labels.enumerate() {
            if let text = input[i] {
                message += "\n\(label): \(text)"
            }
        }
        if !textView.text.isEmpty {
            message += "\nMessage: \(textView.text)"
            
        }
        
        let title = "Text Input"
        let alertController =
            UIAlertController(title: title,
                message: message,
                preferredStyle: .Alert)
        
        // Create the action.
        let cancelAction =
            UIAlertAction(title: "OK",
                style: .Cancel,
                handler: nil)
        alertController.addAction(cancelAction)
        presentViewController(alertController,
            animated: true,
            completion: nil)
    }
    

}

