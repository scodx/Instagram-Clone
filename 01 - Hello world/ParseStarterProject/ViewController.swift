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
        
        /*
        var product = PFObject(className: "Products")
        
        product["name"] = "Enchiladas!"
        product["description"] = "Echiladas!!!!!!!!!!!"
        product["price"] = 7.99
        
        product.saveInBackgroundWithBlock{(success, error) -> Void in
            println("saved to Parse with ID: \(product.objectId)")
        }
        */
        
        // enchiladas ID: bkvKUZRMaF
        
        
        var query = PFQuery(className: "Products")
        
        // Query an item by it´s ID and EDIT the item
        query.getObjectInBackgroundWithId("bkvKUZRMaF", block: {(object: PFObject?, error: NSError? ) -> Void in
            
            if error != nil{
                println(error)
            }else if let product = object{
                
                product["description"] = "Enchiladas hechas en casa!!"
                product["price"] = 9.00
                
                product.saveInBackground()
                
            }
            
        })
        
        
        
        // Query an item by it´s ID
        
        /*
        query.getObjectInBackgroundWithId("bkvKUZRMaF", block: {(object, error ) -> Void in
        
            if error != nil{
                println(error)
            }else{
                let oName = object!.objectForKey("name")
                let oDesc = object!.objectForKey("description")
                println("Name: \(oName)), Description: \(oDesc)");
            }
        
        })
        */
        
        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

