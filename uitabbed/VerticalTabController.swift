//
//  VerticalTabController.swift
//  uitabbed
//
//  Created by tfulton on 2/24/16.
//  Copyright © 2016 tfulton. All rights reserved.
//

import Foundation
import UIKit

class VerticalTabController: UIViewController {
    
    var currentViewController: UIViewController?
    @IBOutlet var placeholderView: UIView!
    @IBOutlet var tabBarButtons: Array<UIButton>!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        if(tabBarButtons.count > 0) {
            performSegueWithIdentifier("FirstVcIdentifier", sender: tabBarButtons[0])
        }
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        let availableIdentifiers = ["FirstVcIdentifier", "SecondVcIdentifier"]
        
        if(availableIdentifiers.contains(segue.identifier!)) {
            
            for btn in tabBarButtons {
                btn.selected = false
            }
            
            let senderBtn = sender as! UIButton
            senderBtn.selected = true
            
        }
    }
    
}