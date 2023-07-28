//
//  Collection.swift
//  IOSCourse
//
//  Created by Huda M. A'abed on 02/07/2022.
//

import Foundation

class Collection{
    var id: Int = 6.random
    var imgCover: String?
    var isFavorite: Bool = false
    
    
    init(imgCover: String?, isFavorite: Bool){
        self.imgCover = imgCover
        self.isFavorite = isFavorite
        
    }
    
}
