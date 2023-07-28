//
//  StorageDetailsTableViewCell.swift
//  IOSCourse
//
//  Created by Huda M. A'abed on 05/08/2022.
//

import UIKit

class StorageDetailsTableViewCell: UITableViewCell {
    
    @IBOutlet weak var view: UIView!
    
    @IBOutlet weak var lblTitle: UILabel!
    
    @IBOutlet weak var lblStorage: UILabel!
    
    @IBOutlet weak var progress: UIProgressView!
    
    var object: Any?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func configureCell(){
        if let object = self.object as? StorageDetails {
            view.backgroundColor = UIColor.init(named: object.color ?? "4378DB")
            progress.trackTintColor = UIColor.init(named: object.color ?? "4378DB")
            lblTitle.text = object.folderName
            lblStorage.text = object.storage
            progress.progress = object.progress ?? 0.0
            progress.progressTintColor = UIColor.init(named: object.progressTintColor  ?? "#EEF7FE")
            
        }
    }
}
