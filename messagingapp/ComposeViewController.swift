//
//  ComposeViewController.swift
//  messagingapp
//
//  Created by Joshua Damesworth on 4/16/17.
//  Copyright © 2017 Joshua Damesworth. All rights reserved.
//

import UIKit
import FirebaseDatabase

class ComposeViewController: UIViewController {

    @IBOutlet weak var textView: UITextView!
    
    var ref:FIRDatabaseReference?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ref = FIRDatabase.database().reference()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func addPost(_ sender: Any) {
        
        //TODO: Post the data to firebase
        ref?.child("Posts").childByAutoId().setValue("off")
        
        //Dismiss the popover
        presentingViewController?.dismiss(animated: true, completion: nil)
        
    }

    @IBAction func cancelPost(_ sender: Any) {
        
        //Dismiss the popover
        presentingViewController?.dismiss(animated: true, completion: nil)
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
