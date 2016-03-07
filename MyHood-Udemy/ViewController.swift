//
//  ViewController.swift
//  MyHood-Udemy
//
//  Created by Emmanuel Darmon on 02/03/2016.
//  Copyright © 2016 Emmanuel Darmon. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    var posts = [Post]()

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        let post = Post(imagePatch: "", title: "Post 1", description: "Post 1 description")
        let post1 = Post(imagePatch: "", title: "Post 2", description: "Post 2 description")
        let post2 = Post(imagePatch: "", title: "Post 3", description: "Post 3 description")
        
        posts.append(post)
        posts.append(post1)
        posts.append(post2)
        
        tableView.reloadData()
    
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let post = posts[indexPath.row]
        if let cell = tableView.dequeueReusableCellWithIdentifier("PostCell") as? PostCell {
            cell.configureCell(post)
            return cell
        } else {
            let cell = PostCell()
            cell.configureCell(post)
            return cell
        }
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 86.7
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return posts.count
    }

}

