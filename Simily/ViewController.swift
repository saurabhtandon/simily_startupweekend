//
//  ViewController.swift
//  Simily
//
//  Created by Chris Li on 3/7/15.
//  Copyright (c) 2015 Simily. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var img: UIImageView?
    @IBOutlet var searchField: UITextField?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //img?.contentMode = UIViewContentMode.ScaleAspectFill
        searchField?.addBottomBorderWithColor(UIColor.blackColor(), andWidth: 2.0)

        for prod in nodeTemplate.products {
            println("Fetching image for \(prod.title)")
            let data = prod.imageData
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        self.performSegueWithIdentifier("Search", sender: self)
        return true
    }
}

