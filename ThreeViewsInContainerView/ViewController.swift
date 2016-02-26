//
//  ViewController.swift
//  ThreeViewsInContainerView
//
//  Created by wen on 16/2/26.
//  Copyright © 2016年 wenfeng. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var segmented: UISegmentedControl!
    
    var currentViewIndex = 0
    var viewsName = ["First", "Second", "Third"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        segmented.addTarget(self, action: "segmentedDidChange:", forControlEvents: .ValueChanged)
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func segmentedDidChange(segmented: UISegmentedControl) {
        let segueName = viewsName[currentViewIndex] + "To" + viewsName[segmented.selectedSegmentIndex]
        
//        print(segueName)
        NSNotificationCenter.defaultCenter().postNotificationName(segueName, object: nil)
        
        currentViewIndex = segmented.selectedSegmentIndex

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

