//
//  ViewController.swift
//  Segues
//
//  Created by Xiaoping Jia on 1/28/16.
//  Copyright © 2016 DePaul University. All rights reserved.
//

import UIKit

class BlueViewController: UIViewController {

    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textField: UITextField!
    
    var message: String = "BlueViewController"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        label.text = message
    }
    
    @IBAction func doneEditing(sender: UITextField) {
        sender.resignFirstResponder()
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if let target = segue.destinationViewController as? YellowViewController {
            target.message = "From BlueViewController"
            if let text = textField.text  {
                target.message += "\nMessage: \(text)"
            }
        }
    }
    
    @IBAction func unwindToBlue(segue : UIStoryboardSegue) {
        if let from = segue.sourceViewController as? YellowViewController {
            message = "Unwind from YellowViewController"
            if let text = from.textField.text {
                message += "\nMessage: \(text)"
            }
        } else if let from = segue.sourceViewController as? GreenViewController {
            message = "Unwind from GreenViewController"
            if let text = from.textField.text {
                message += "\nMessage: \(text)"
            }
        }
        
    }
    

}

