//
//  ViewController.swift
//  Controls
//
//  Created by Xiaoping Jia on 1/10/16.
//  Copyright © 2016 DePaul University. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var switchLabel: UILabel!
    @IBOutlet weak var sliderValue: UILabel!
    @IBOutlet weak var stepperValue: UILabel!
    
    @IBOutlet weak var leftSwitch: UISwitch!
    @IBOutlet weak var rightSwitch: UISwitch!
    
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var stepper: UIStepper!
    
    @IBOutlet weak var image: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        nameLabel.text = "Botticelli"
        sliderValue.text = "Value: \(Int(slider.value))"
        stepperValue.text = "Value: \(Int(stepper.value))"
    }

    @IBAction func nameSelected(sender: UISegmentedControl) {
        let name = sender.titleForSegmentAtIndex(sender.selectedSegmentIndex)
        nameLabel.text = name
        if let img = UIImage(named:name!) {
            image.image = img
        }
    }
    
    @IBAction func switchToggled(sender: UISwitch) {
        switchLabel.text = "Switch " + (sender.on ? "on" : "off")
        leftSwitch.setOn(sender.on, animated: true)
        rightSwitch.setOn(sender.on, animated: true)
    }
    
    @IBAction func sliderMoved(sender: UISlider) {
        sliderValue.text = "Value: \(Int(sender.value))"
    }
    
    
    @IBAction func stepperChanged(sender: UIStepper) {
        stepperValue.text = "Value: \(Int(sender.value))"
    }
    
    @IBAction func controlDisabled(sender: UISegmentedControl) {
        let enabled = (sender.selectedSegmentIndex == 1)
        leftSwitch.enabled = enabled
        rightSwitch.enabled = enabled
        slider.enabled = enabled
        stepper.enabled = enabled
    }
    
    @IBAction func controlHidden(sender: UISegmentedControl) {
        let hidden = (sender.selectedSegmentIndex == 0)
        leftSwitch.hidden = hidden
        rightSwitch.hidden = hidden
        slider.hidden = hidden
        stepper.hidden = hidden
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

