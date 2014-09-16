//
//  IntroViewController.swift
//  Carousel
//
//  Created by Ashutosh Kumar on 9/13/14.
//  Copyright (c) 2014 Yahoo. All rights reserved.
//

import UIKit

class IntroViewController: UIViewController {
 
    @IBOutlet weak var scrollone: UIScrollView!
    @IBOutlet weak var gotologin: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.

        
       scrollone.contentSize = CGSize(width: 320, height: 1136)

    
    }

 
    @IBAction func ongotologin(sender: AnyObject) {
        
        self.performSegueWithIdentifier("firstSegue", sender: self)
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
