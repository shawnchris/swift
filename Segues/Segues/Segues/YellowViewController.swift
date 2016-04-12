//
//  YellowViewController.swift
//  Segues
//
//  Created by Xiaoping Jia on 4/16/15.
//  Copyright (c) 2015 DePaul University. All rights reserved.
//

import UIKit

class YellowViewController: UIViewController {
    
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
        if let from = presentingViewController as? BlueViewController {
            from.message = "From YellowViewController"
            if let text = textField.text {
                from.message += "\nMessage: \(text)"
            }
        }
        
        dismissViewControllerAnimated(true, completion: nil)
    }

    override func viewWillAppear(animated: Bool) {
        label.text = message
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if let target = segue.destinationViewController as? GreenViewController {
            target.message = "From YellowViewController"
            if let text = textField.text {
                target.message += "\nMessage: \(text)"
            }
        }
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
