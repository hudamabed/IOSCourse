//
//  StorageTableViewCell.swift
//  IOSCourse
//
//  Created by Huda M. A'abed on 14/08/2022.
//

import UIKit

class StorageTableViewCell: UITableViewCell {
    
    @IBOutlet weak var lblTitle: UILabel!
    
    var object: String?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func configureCell(){
        if let obj = self.object {
            lblTitle.text = obj
        }
    }    
}
