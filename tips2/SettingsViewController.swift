//
//  SettingsViewController.swift
//  tips2
//
//  Created by Steve Wan on 4/20/15.
//  Copyright (c) 2015 Steve Wan. All rights reserved.
//

import UIKit
import Foundation

class SettingsViewController: UIViewController {
    
        override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
 
    }
  
    @IBOutlet weak var Percentage1Field: UITextField!
  
    @IBAction func Percentage1Changed(sender: AnyObject) {
        
        var Percentage1Amount = ((Percentage1Field.text as NSString).doubleValue)/100
        // var Percentage1Amount = Percentage1Field.text.toInt()
        println("percentage 1 changed")
        println(Percentage1Amount)
        println(Percentage1Field.text)
        
        
        var defaults = NSUserDefaults.standardUserDefaults()
        
        defaults.setDouble(Percentage1Amount, forKey: "KeyForPercentage1")
        defaults.setObject(Percentage1Field.text, forKey: "KeyForPercentage1Title")
        
        defaults.synchronize()
        
        var Percentage11Value = defaults.doubleForKey("KeyForPercentage1")
        println("Percentage 11 is set as \(Percentage11Value)")
    }
  
    
    @IBOutlet weak var Percentage2Field: UITextField!
    
    
    @IBAction func Percentage2Changed(sender: AnyObject) {
        var Percentage2Amount = (Percentage2Field.text as NSString).doubleValue/100
        println("percentage 2 changed")
        println(Percentage2Amount)
        println(Percentage2Field.text)
        
        
        var defaults = NSUserDefaults.standardUserDefaults()
        defaults.setDouble(Percentage2Amount, forKey: "KeyForPercentage2")
        defaults.setObject(Percentage2Field.text, forKey: "KeyForPercentage2Title")
        defaults.synchronize()
        
        var Percentage22Value = defaults.doubleForKey("KeyForPercentage2")
        println("Percentage 22 is set as \(Percentage22Value)")
        
        
    }

    
    @IBOutlet weak var Percentage3Field: UITextField!
    
    
    @IBAction func Percentage3Changed(sender: AnyObject) {
        var Percentage3Amount = (Percentage3Field.text as NSString).doubleValue/100
        println("percentage 3 changed")
        println(Percentage3Amount)
        println(Percentage3Field.text)
        
        
        var defaults = NSUserDefaults.standardUserDefaults()
        defaults.setDouble(Percentage3Amount, forKey: "KeyForPercentage3")
        defaults.setObject(Percentage3Field.text, forKey: "KeyForPercentage3Title")
        defaults.synchronize()
        
        var Percentage33Value = defaults.doubleForKey("KeyForPercentage3")
        println("Percentage 33 is set as \(Percentage33Value)")
        
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        println("view will appear")
    
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        println("view did appear")
    }
    
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        println("view will disappear")
        
    }
    
    override func viewDidDisappear(animated: Bool) {
        super.viewDidDisappear(animated)
        println("view did disappear")
        
    }
  
    
  
  //  @IBAction func Percentage2Changed(sender: AnyObject) {
   // }

    
    /* @IBAction func onEditingChanged(sender: AnyObject) {
    var BillAmount = (BillField.text as NSString).doubleValue
    println(BillAmount)
    
    
    var TipPercentages = [0.18, 0.20, 0.25]
    var TipPercentage = TipPercentages[TipControl.selectedSegmentIndex]
    
    println(TipPercentage)
    
    var TipAmount = BillAmount * TipPercentage
    var TotalAmount = BillAmount + TipAmount
    
    TipLabel.text = String(format: "$%.2f", TipAmount)
    TotalLabel.text = String(format: "$%.2f", TotalAmount)
    
    }
    */

 
    /*
    var defaults = NSUserDefaults.standardUserDefaults()
    defaults.setObject("some_string_to_save", forKey: "some_key_that_you_choose")
    defaults.setInteger(123, forKey: "another_key_that_you_choose")
    defaults.synchronize()
    
    */

    
}
