//
//  TutorialViewController.swift
//  Carousel
//
//  Created by Ashutosh Kumar on 9/14/14.
//  Copyright (c) 2014 Yahoo. All rights reserved.
//

import UIKit

class TutorialViewController: UIViewController , UIScrollViewDelegate {
    

  
    @IBOutlet weak var scrolltwo: UIScrollView!
    @IBOutlet weak var pager: UIPageControl!
    @IBOutlet weak var spinButton: UIButton!
   // @IBOutlet weak var welcome: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        scrolltwo.delegate = self;
        scrolltwo.pagingEnabled = true;
        scrolltwo.contentSize = CGSize(width: 1280, height: 568)



        // Do any additional setup after loading the view.
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    func scrollViewDidScroll(scrolltwo: UIScrollView!) {
        // This method is called as the user scrolls


    }
    
    func scrollViewWillBeginDragging(scrolltwo: UIScrollView!) {
        
    }
    
    func scrollViewDidEndDragging(scrolltwo: UIScrollView!,
        willDecelerate decelerate: Bool) {
            // This method is called right as the user lifts their finger
    }
    
    
    
    func scrollViewDidEndDecelerating(scrolltwo: UIScrollView!) {
        // Get the current page based on the scroll offset
        var page : Int = Int(round(scrolltwo.contentOffset.x / 320))
        
        // Set the current page, so the dots will update
        pager.currentPage = page
    }
    
    @IBAction func onspinButton(sender: AnyObject) {
        
    self.performSegueWithIdentifier("timelineSegue", sender: self)
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
