//
//  Post.swift
//  MyHood-Udemy
//
//  Created by Emmanuel Darmon on 02/03/2016.
//  Copyright © 2016 Emmanuel Darmon. All rights reserved.
//

import Foundation

class Post {
    
    private var imagePath: String
    private var title: String
    private var postDesc: String
    
    init(imagePatch: String, title: String, description: String) {
        self.imagePath = imagePatch
        self.title = title
        self.postDesc = description
    }
    
}
