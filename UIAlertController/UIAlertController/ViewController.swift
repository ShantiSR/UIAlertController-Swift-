//
//  ViewController.swift
//  UIAlertController
//
//  Created by Shanti on 18/1/15.
//  Copyright (c) 2015 Shanti Rodríguez. All rights reserved.
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

    // MARK: - Using UIAlertViewController to Present an Alert
    @IBAction func showAlert(sender: UIButton)
    {
        // let alertController = UIAlertController(title: "Hey Loco", message: "What do you want to do?", preferredStyle: .ActionSheet)
        let alertController = UIAlertController(title: "Hey Loco", message: "What do you want to do?", preferredStyle: .Alert)
        
        let defaultAction = UIAlertAction(title: "OK", style: .Default, handler: nil)
        alertController.addAction(defaultAction)
        
        presentViewController(alertController, animated: true, completion: nil)

        // Action Handler and Closures
        let callAction = UIAlertAction(title: "Call", style: .Default, handler: {
            action in
            let alertMessage = UIAlertController(title: "Service Unavailable", message: "Sorry, the call feature is not available yet. Please retry later.", preferredStyle: .Alert)
            alertMessage.addAction(UIAlertAction(title: "OK", style: .Default, handler: nil))
            self.presentViewController(alertMessage, animated: true, completion: nil)
            }
        )
        alertController.addAction(callAction)
    }

}

