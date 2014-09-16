//
//  FeedViewController.swift
//  Carousel
//
//  Created by Ashutosh Kumar on 9/14/14.
//  Copyright (c) 2014 Yahoo. All rights reserved.
//

import UIKit

class FeedViewController: UIViewController {

    @IBOutlet weak var settings: UIButton!
    
    @IBOutlet weak var conversations: UIButton!
    
    @IBOutlet weak var scrollsix: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollsix.contentSize = CGSize(width: 320, height: 1564)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func conversations(sender: AnyObject) {
        
        self.performSegueWithIdentifier("lastSegue", sender: self)
        
    }
    
    @IBAction func settings(sender: AnyObject) {
    
        
        self.performSegueWithIdentifier("settingsSegue", sender: self)
    

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
