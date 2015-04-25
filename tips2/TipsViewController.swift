//
//  ViewController.swift
//  tips2
//
//  Created by Steve Wan on 4/19/15.
//  Copyright (c) 2015 Steve Wan. All rights reserved.
//

import UIKit

class TipsViewController: UIViewController {

    @IBOutlet weak var BillField: UITextField!
    @IBOutlet weak var TipLabel: UILabel!
    
    @IBOutlet weak var TotalLabel: UILabel!
    @IBOutlet weak var TipControl: UISegmentedControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        TipLabel.text = "$0.00"
        TotalLabel.text = "$15.00"
        
        TipControl.setTitle("18%", forSegmentAtIndex: 0)
        TipControl.setTitle("20%", forSegmentAtIndex: 1)
        TipControl.setTitle("22%", forSegmentAtIndex: 2)
        
        var defaults = NSUserDefaults.standardUserDefaults()
        
        defaults.setDouble(0.18, forKey: "KeyForPercentage1")
        defaults.setObject("18", forKey: "KeyForPercentage1Title")
        defaults.setDouble(0.20, forKey: "KeyForPercentage2")
        defaults.setObject("20", forKey: "KeyForPercentage2Title")
        defaults.setDouble(0.22, forKey: "KeyForPercentage3")
        defaults.setObject("22", forKey: "KeyForPercentage3Title")
        
        defaults.synchronize()
        
        
    }
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        println("view will appear")
        
        var defaults = NSUserDefaults.standardUserDefaults()
        var Percentage1Value = defaults.doubleForKey("KeyForPercentage1")
        println("View will appear: Percentage 1 is set as \(Percentage1Value)")
        
        
    }

    // viewDidAppear is the place to update all default values
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        println("view did appear")
        var defaults = NSUserDefaults.standardUserDefaults()
        var Percentage1Value = defaults.doubleForKey("KeyForPercentage1")
        var Percentage2Value = defaults.doubleForKey("KeyForPercentage2")
        var Percentage3Value = defaults.doubleForKey("KeyForPercentage3")

        var Percentage1Title = defaults.objectForKey("KeyForPercentage1Title") as String
        var Percentage1TitleA = Percentage1Title + "%"
        var Percentage2Title = defaults.objectForKey("KeyForPercentage2Title") as String
        var Percentage2TitleA = Percentage2Title + "%"
        var Percentage3Title = defaults.objectForKey("KeyForPercentage3Title") as String
        var Percentage3TitleA = Percentage3Title + "%"
        
        var TipPercentages = [Percentage1Value, Percentage2Value, Percentage3Value]
//        var TipPercentages = [0.18, 0.20, 0.25]
        // comment
        var TipPercentage = TipPercentages[TipControl.selectedSegmentIndex]
        
// segmentedControl setTitle:<YourLocalizedString> forSegmentAtIndex:0];
        TipControl.setTitle(Percentage1TitleA, forSegmentAtIndex: 0)
        TipControl.setTitle(Percentage2TitleA, forSegmentAtIndex: 1)
        TipControl.setTitle(Percentage3TitleA, forSegmentAtIndex: 2)
        
        
        var BillAmount = (BillField.text as NSString).doubleValue
        println(BillAmount)
        
        var TipAmount = BillAmount * TipPercentage
        var TotalAmount = BillAmount + TipAmount
        
        TipLabel.text = String(format: "$%.2f", TipAmount)
        TotalLabel.text = String(format: "$%.2f", TotalAmount)
        
        println("View did appear: Updated 1")
        
        
        /*
        println("View did appear: TipControlText s set as \(TipControl.t))")
        TipControl = UISegmentedControl(items: [
            NSLocalizedString("Aaaaaa", comment: ""),
            NSLocalizedString("Bbbbbb", comment: ""),
            NSLocalizedString("Cccccc", comment: ""),
            ])
        */
        
    }

    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        println("view will disappear")
        var defaults = NSUserDefaults.standardUserDefaults()
        var Percentage1Value = defaults.doubleForKey("KeyForPercentage1")
        println("View will disappear: Percentage 1 is set as \(Percentage1Value)")
        
    }
    
    override func viewDidDisappear(animated: Bool) {
        super.viewDidDisappear(animated)
        println("view did disappear")
        var defaults = NSUserDefaults.standardUserDefaults()
        var Percentage1Value = defaults.doubleForKey("KeyForPercentage1")
        println("View did disappear: Percentage 1 is set as \(Percentage1Value)")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onEditingChanged(sender: AnyObject) {

        var BillAmount = (BillField.text as NSString).doubleValue
println(BillAmount)
        
        
        var defaults = NSUserDefaults.standardUserDefaults()
        var Percentage1Value = defaults.doubleForKey("KeyForPercentage1")
        var Percentage2Value = defaults.doubleForKey("KeyForPercentage2")
        var Percentage3Value = defaults.doubleForKey("KeyForPercentage3")
        
        var TipPercentages = [Percentage1Value, Percentage2Value, Percentage3Value]
        var TipPercentage = TipPercentages[TipControl.selectedSegmentIndex]
        
     
        // var TipPercentages = [0.18, 0.20, 0.25]
        // var TipPercentages = [Percentage1Value, 0.20, 0.25]
        // var TipPercentage = TipPercentages[TipControl.selectedSegmentIndex]
        
        println(TipPercentage)
        
        var TipAmount = BillAmount * TipPercentage
        var TotalAmount = BillAmount + TipAmount

        TipLabel.text = String(format: "$%.2f", TipAmount)
        TotalLabel.text = String(format: "$%.2f", TotalAmount)

    }
    
    @IBAction func OnTap(sender: AnyObject) {
        view.endEditing(true)
    }
    
}

