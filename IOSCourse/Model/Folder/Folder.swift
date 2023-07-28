//
//  Folder.swift
//  IOSCourse
//
//  Created by Huda M. A'abed on 20/08/2022.
//

import Foundation


class Folder {
    var folderImage: String?
    var folderName: String?
    var date: String?
    var color: String?
    var backgroundColor: String?
    
    init(folderImage: String? ,folderName: String? ,date: String? ,color: String? ,backgroundColor: String?){
        self.folderName = folderName
        self.folderImage = folderImage
        self.date = date
        self.color = color
        self.backgroundColor = backgroundColor
    }
}
