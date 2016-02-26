//
//  ThirdViewController.swift
//  ThreeViewsInContainerView
//
//  Created by wen on 16/2/26.
//  Copyright © 2016年 wenfeng. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "segueToView:", name: "ThirdToFirst", object: nil)
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "segueToView:", name: "ThirdToSecond", object: nil)
        // Do any additional setup after loading the view.
    }
    
    override func viewDidDisappear(animated: Bool) {
        NSNotificationCenter.defaultCenter().removeObserver(self, name: "ThirdToFirst", object: nil)
        NSNotificationCenter.defaultCenter().removeObserver(self, name: "ThirdToSecond", object: nil)
    }
    
    func segueToView(sender: NSNotification) {
        self.performSegueWithIdentifier(sender.name, sender: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
