//
//  Rating.swift
//  IOSCourse
//
//  Created by Huda M. A'abed on 28/06/2022.
//

import Foundation

class Rating {
    var imageProfile: String?
    var userName: String?
    var descrption: String?
    var rating: Float?




    init(imageProfile:String?, userName: String?, descrption: String?, rating: Float?){
        self.imageProfile = imageProfile
        self.userName = userName
        self.descrption = descrption
        self.rating = rating
    }
}


