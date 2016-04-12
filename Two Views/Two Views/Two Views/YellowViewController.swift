//
//  YellowViewController.swift
//  Two Views
//
//  Created by Xiaoping Jia on 1/27/16.
//  Copyright © 2016 DePaul University. All rights reserved.
//

import UIKit

class YellowViewController: UIViewController {

    @IBAction func switchToBlue(sender: UIBarButtonItem) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBAction func buttonPressed(sender: UIButton) {
        var title : String? = "An App with Two Scenes"
        var message : String? = "Your are in the yellow scene"

        var actions: [UIAlertAction] = []
        
        let cancelAction =
        UIAlertAction(title: "Yes! Here is fine.",
            style: .Default,
            handler: nil)
        let returnAction =
        UIAlertAction(title: "No! Take me back to the blue scene.",
            style: .Destructive) { _ in
                self.dismissViewControllerAnimated(true, completion: nil) }

        switch sender.currentTitle ?? "" {
        case "No Title":
            title = nil
            message = nil
            fallthrough
        case "Okay / Cancel":
            actions += [ cancelAction, returnAction ]
            
        case "More Choices":
            let safeActionOne =
                UIAlertAction(title: "Safe Choice One",
                    style: .Default,
                    handler: nil)
            let safeActionTwo =
                UIAlertAction(title: "Safe Choice Two",
                    style: .Default,
                    handler: nil)
            actions += [ cancelAction, safeActionOne, safeActionTwo, returnAction ]
        default:
            actions += [ cancelAction ]
            
        }
        
        
        let alertController =
        UIAlertController(title: title,
            message: message,
            preferredStyle: .ActionSheet)
        for action in actions {
            alertController.addAction(action)
        }
        presentViewController(alertController,
            animated: true,
            completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
