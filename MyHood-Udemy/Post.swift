//
//  Post.swift
//  MyHood-Udemy
//
//  Created by Emmanuel Darmon on 02/03/2016.
//  Copyright © 2016 Emmanuel Darmon. All rights reserved.
//

import Foundation

class Post {
    
    private var _imagePath: String
    private var _title: String
    private var _postDesc: String
    
    var imagePath: String {
        return _imagePath
    }
    
    var title: String {
        return _title
    }
    
    var postDesc: String {
        return _postDesc
    }
    
    init(imagePatch: String, title: String, description: String) {
        self._imagePath = imagePatch
        self._title = title
        self._postDesc = description
    }
    
}
