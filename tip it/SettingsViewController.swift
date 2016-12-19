//
//  SettingsViewController.swift
//  tip it
//
//  Created by Fiona Thompson on 12/18/16.
//  Copyright © 2016 Fiona Thompson. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var percentageControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let defaults = UserDefaults.standard
        let intSegmentedControl = defaults.integer(forKey: "defaultPercentage")
        
        percentageControl.selectedSegmentIndex = intSegmentedControl
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    //Store selected Default Tip Percentage in persistent memory
    @IBAction func percentageSelected(_ sender: Any) {
        let defaults = UserDefaults.standard
        defaults.set(percentageControl.selectedSegmentIndex, forKey: "defaultPercentage")
        defaults.synchronize()
    }
}
