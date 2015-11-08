//
//  ViewController.swift
//  PSCellStyleHighlightButton
//
//  Created by Predrag Samardzic on 08/11/15.
//  Copyright © 2015 pedja. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var secondButton: PSCellStyleButton!
    @IBOutlet weak var thirdButton: PSCellStyleButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        secondButton.showBottomLine = false;
        
        thirdButton.bottomLineColor = UIColor.blackColor()
        thirdButton.bottomLineLeftInset = 0.0
        thirdButton.bottomLineRightInset = 0.0
        thirdButton.tintColor = UIColor.redColor()
        thirdButton.setTitleColor(UIColor.blueColor(), forState: UIControlState.Normal)
        thirdButton.backgroundColor = UIColor.magentaColor()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

