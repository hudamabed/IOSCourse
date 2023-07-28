//
//  StorageDetails.swift
//  IOSCourse
//
//  Created by Huda M. A'abed on 24/08/2022.
//

import Foundation

class StorageDetails {
    var folderName: String?
    var storage: String?
    var color: String?
    var progress: Float?
    var progressTintColor : String?
    
    init(folderName: String? ,storage: String? ,color: String? ,progress: Float? ,progressTintColor : String?){
        self.folderName = folderName
        self.storage = storage
        self.color = color
        self.progress = progress
        self.progressTintColor = progressTintColor
    }
}
