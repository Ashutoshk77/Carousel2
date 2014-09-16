//
//  SettingsViewController.swift
//  Carousel
//
//  Created by Ashutosh Kumar on 9/14/14.
//  Copyright (c) 2014 Yahoo. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    @IBOutlet weak var closeSet: UIButton!

    @IBOutlet weak var logout: UIButton!
    @IBOutlet weak var settingsScroll: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        settingsScroll.contentSize = CGSize(width: 320, height: 1136)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func oncloseSet(sender: AnyObject) {
        
        dismissViewControllerAnimated(true, completion: nil)
        
    }

    @IBAction func logout(sender: AnyObject) {
   
        self.performSegueWithIdentifier("logoutSegue", sender: self)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
