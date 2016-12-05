//
//  ViewController.swift
//  seques
//
//  Created by Paul on 30.12.15.
//  Copyright © 2015 Home. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func loadBlue (sender: AnyObject!) {
        ////////// Sender used to pass data
        let str = "We just came from ellow screen"
        performSegueWithIdentifier("goToBlue", sender: str)
    }

    @IBAction func loadRed(sender: AnyObject) {
        performSegueWithIdentifier("goToRed", sender: nil)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        ////////// There is where you do work right before view loads
        ////////// keep in mind - the next View controller has already been initialized 
        if segue.identifier == "goToBlue" {
            if let blueVC = segue.destinationViewController as? BlueViewController {
                if let theString = sender as? String {
                    blueVC.transferText = theString
                }
            }
        }
    }
}

