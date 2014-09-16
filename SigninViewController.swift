//
//  SigninViewController.swift
//  Carousel
//
//  Created by Ashutosh Kumar on 9/13/14.
//  Copyright (c) 2014 Yahoo. All rights reserved.
//

import UIKit

class SigninViewController: UIViewController {
    


    @IBOutlet weak var signinButton: UIButton!

    @IBOutlet weak var email: UITextField!
    

    @IBOutlet weak var login: UIScrollView!
    
    @IBOutlet weak var password: UITextField!
    
    @IBOutlet weak var loader: UIActivityIndicatorView!

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillShow:", name: UIKeyboardWillShowNotification, object: nil)
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillHide:", name: UIKeyboardWillHideNotification, object: nil)
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }
    
 


    
    
    func keyboardWillShow(notification: NSNotification!) {
        
        
    //    login.backgroundColor = UIColor.redColor() //
        
        login.frame = CGRect(x: 0, y: 100, width: 320, height: 260)
       
    }
    
    func keyboardWillHide(notification: NSNotification!) {

        
        login.backgroundColor = UIColor.greenColor()
        login.frame = CGRect(x: 0, y: 300, width: 320, height: 260)
        
    }
    
    
    
    @IBAction func signinButton(sender: AnyObject) {
   
        
        loader.startAnimating()
        signinButton.selected = true
        
        delay(5, closure: { () -> () in
   
            //delay action
        
        self.loader.stopAnimating()
        self.signinButton.selected = false
        
        if (self.email.text == "tim" && self.password.text == "password") {
            self.performSegueWithIdentifier("loginSegue", sender: self)
        } else {
            UIAlertView(title: "Whoa", message: "Either email or password is wrong!", delegate: nil, cancelButtonTitle: "Try Again").show()
        }
        })
        
            //delay action
    }
    
    //function to delay

    func delay(delay:Double, closure:()->()) {
        dispatch_after(
            dispatch_time(
                DISPATCH_TIME_NOW,
                Int64(delay * Double(NSEC_PER_SEC))
            ),
            dispatch_get_main_queue(), closure)
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

