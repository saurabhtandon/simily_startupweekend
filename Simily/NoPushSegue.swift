//
//  NoPushSegue.swift
//  Simily
//
//  Created by Chris Li on 3/8/15.
//  Copyright (c) 2015 Simily. All rights reserved.
//

import UIKit

class NoPushSegue: UIStoryboardSegue {
    override func perform() {
        let source = sourceViewController as UIViewController
        if let navigation = source.navigationController {
            navigation.pushViewController(destinationViewController as UIViewController, animated: false)
        }
    }
}
