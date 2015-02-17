//
//  ViewController.swift
//  SwiftCalculatorSample
//
//  Created by ucuc on 2/15/15.
//  Copyright (c) 2015 ucuc. All rights reserved.
//

import UIKit
// import Darwin

class ViewController: UIViewController {

    @IBOutlet weak var mainLabel: UILabel!
    @IBOutlet weak var subLabel: UILabel!
    var operation : Int = 0
    var number : Double = 0.0
    var periodCount : Int = 0
    
    @IBAction func button0(sender: AnyObject) {
        if ( periodCount > 0 ) {
            mainLabel.text = String (format: "%.\(periodCount)f", atof(mainLabel.text!) +  0 / pow(10, Double(periodCount)))
            periodCount++
            return
        }
        mainLabel.text = String (format: "%g", atof(mainLabel.text!) * 10 + 0)
    }
    @IBAction func button1(sender: AnyObject) {
        if ( periodCount > 0 ) {
            mainLabel.text = String (format: "%g", atof(mainLabel.text!) +  1 / pow(10, Double(periodCount)))
            periodCount++
            return
        }
        mainLabel.text = String (format: "%g", atof(mainLabel.text!) * 10 + 1)
    }
    @IBAction func button2(sender: AnyObject) {
        if ( periodCount > 0 ) {
            mainLabel.text = String (format: "%g", atof(mainLabel.text!) +  2 / pow(10, Double(periodCount)))
            periodCount++
            return
        }
        mainLabel.text = String (format: "%g", atof(mainLabel.text!) * 10 + 2)
    }
    @IBAction func button3(sender: AnyObject) {
        if ( periodCount > 0 ) {
            mainLabel.text = String (format: "%g", atof(mainLabel.text!) +  3 / pow(10, Double(periodCount)))
            periodCount++
            return
        }
        mainLabel.text = String (format: "%g", atof(mainLabel.text!) * 10 + 3)
    }
    @IBAction func button4(sender: AnyObject) {
        if ( periodCount > 0 ) {
            mainLabel.text = String (format: "%g", atof(mainLabel.text!) +  4 / pow(10, Double(periodCount)))
            periodCount++
            return
        }
        mainLabel.text = String (format: "%g", atof(mainLabel.text!) * 10 + 4)
    }
    @IBAction func button5(sender: AnyObject) {
        if ( periodCount > 0 ) {
            mainLabel.text = String (format: "%g", atof(mainLabel.text!) +  5 / pow(10, Double(periodCount)))
            periodCount++
            return
        }
        mainLabel.text = String (format: "%g", atof(mainLabel.text!) * 10 + 5)
    }
    @IBAction func button6(sender: AnyObject) {
        if ( periodCount > 0 ) {
            mainLabel.text = String (format: "%g", atof(mainLabel.text!) +  6 / pow(10, Double(periodCount)))
            periodCount++
            return
        }
        mainLabel.text = String (format: "%g", atof(mainLabel.text!) * 10 + 6)
    }
    @IBAction func button7(sender: AnyObject) {
        if ( periodCount > 0 ) {
            mainLabel.text = String (format: "%g", atof(mainLabel.text!) +  7 / pow(10, Double(periodCount)))
            periodCount++
            return
        }
        mainLabel.text = String (format: "%g", atof(mainLabel.text!) * 10 + 7)
    }
    @IBAction func button8(sender: AnyObject) {
        if ( periodCount > 0 ) {
            mainLabel.text = String (format: "%g", atof(mainLabel.text!) +  8 / pow(10, Double(periodCount)))
            periodCount++
            return
        }
        mainLabel.text = String (format: "%g", atof(mainLabel.text!) * 10 + 8)
    }
    @IBAction func button9(sender: AnyObject) {
        if ( periodCount > 0 ) {
            mainLabel.text = String (format: "%g", atof(mainLabel.text!) +  9 / pow(10, Double(periodCount)))
            periodCount++
            return
        }
        mainLabel.text = String (format: "%g", atof(mainLabel.text!) * 10 + 9)
    }
    @IBAction func buttonPeriod(sender: AnyObject) {
        periodCount++
        mainLabel.text = String (format: "%g.", atof(mainLabel.text!))
    }

    
    @IBAction func buttonPlus(sender: AnyObject) {
        number = atof(mainLabel.text!)
        mainLabel.text = "0"
        periodCount = 0
        operation = 1
    }
    @IBAction func buttonMinus(sender: AnyObject) {
        number = atof(mainLabel.text!)
        mainLabel.text = "0"
        periodCount = 0
        operation = 2
    }
    @IBAction func buttonMultiple(sender: AnyObject) {
        number = atof(mainLabel.text!)
        mainLabel.text = "0"
        periodCount = 0
        operation = 3
    }
    @IBAction func buttonDivide(sender: AnyObject) {
        number = atof(mainLabel.text!)
        mainLabel.text = "0"
        periodCount = 0
        operation = 4
    }
    
    @IBAction func buttonPercent(sender: AnyObject) {
        mainLabel.text = String (format: "%g", atof(mainLabel.text!) * 0.01)
    }
    @IBAction func buttonPlusMinus(sender: AnyObject) {
        mainLabel.text = String (format: "%g", atof(mainLabel.text!) * -1)
    }
    @IBAction func buttonAllClear(sender: AnyObject) {
        mainLabel.text = "0";
        subLabel.text = "";
        periodCount = 0
    }
    @IBAction func buttonEqual(sender: AnyObject) {
        switch (operation) {
        case 1:
            subLabel.text = String (format: "%g", number + atof(mainLabel.text!))
            break
        case 2:
            subLabel.text = String (format: "%g", number - atof(mainLabel.text!))
            break
        case 3:
            subLabel.text = String (format: "%g", number * atof(mainLabel.text!))
            break
        case 4:
            subLabel.text = String (format: "%g", number / atof(mainLabel.text!))
            break
        default:
            break
        }
        mainLabel.text = "0"
        periodCount = 0
    }
    @IBAction func buttonDown(sender: AnyObject) {
        mainLabel.text = subLabel.text
        subLabel.text = ""
        periodCount = 0
    }


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        mainLabel.text = "0";
        subLabel.text = "";
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

