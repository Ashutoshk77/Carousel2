//
//  ConversationsViewController.swift
//  Carousel
//
//  Created by Ashutosh Kumar on 9/14/14.
//  Copyright (c) 2014 Yahoo. All rights reserved.
//

import UIKit

class ConversationsViewController: UIViewController {
    
    @IBOutlet weak var back: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onback(sender: AnyObject) {
        
        navigationController!.popViewControllerAnimated(true)
   

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
