//
//  ViewController.swift
//
//  Copyright 2011-present Parse Inc. All rights reserved.
//

import UIKit
import Parse

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        var product = PFObject(className: "Products")
        
        product["name"] = "Pizza!"
        product["description"] = "delicius!"
        product["price"] = 8.99
        
        product.saveInBackgroundWithBlock{(success, error) -> Void in
            println("saved to Parse!!")
        }
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

