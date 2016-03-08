//
//  AddPostVC.swift
//  MyHood-Udemy
//
//  Created by Emmanuel Darmon on 08/03/2016.
//  Copyright © 2016 Emmanuel Darmon. All rights reserved.
//

import UIKit

class AddPostVC: UIViewController {
    
    @IBOutlet weak var descField: UITextField!
    @IBOutlet weak var titleField: UITextField!
    @IBOutlet weak var postImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        postImage.layer.cornerRadius = postImage.frame.size.width / 2
        postImage.clipsToBounds = true
    }
    
    @IBAction func addPicBtnPressed(sender: UIButton!) {
        sender.setTitle("", forState: .Normal)
    }
    
    @IBAction func makePostBtnPressed(sender: AnyObject) {
    }
    
    @IBAction func cancelBtnPressed(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }
}
