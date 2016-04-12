//
//  GreenViewController.swift
//  Segues
//
//  Created by Xiaoping Jia on 4/16/15.
//  Copyright (c) 2015 DePaul University. All rights reserved.
//

import UIKit

class GreenViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var textField: UITextField!
    
    var message: String = "YellowViewController"

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func doneEditing(sender: UITextField) {
        sender.resignFirstResponder()
    }
    
    @IBAction func switchToBlue(sender: UIBarButtonItem) {
        
        var top: UIViewController = self;
        while top.presentingViewController != nil {
            top = top.presentingViewController!;
        }
        
        if let blue = top as? BlueViewController {
            blue.message = "From GreenViewController"
            if let text = textField.text {
                blue.message += "\nMessage: \(text)"
            }
        }
        
        top.dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBAction func switchToYellow(sender: UIBarButtonItem) {
        if let from = presentingViewController as? YellowViewController {
            from.message = "From GreenViewController"
            if let text = textField.text {
                from.message += "\nMessage: \(text)"
            }
        }
        
        dismissViewControllerAnimated(true, completion: nil)
    }

    
    override func viewWillAppear(animated: Bool) {
        label.text = message
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
