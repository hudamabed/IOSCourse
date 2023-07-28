 //
//  MenuTableViewCell.swift
//  IOSCourse
//
//  Created by Huda M. A'abed on 24/07/2022.
//

import UIKit

class MenuTableViewCell: UITableViewCell {

    
    @IBOutlet weak var lblTitle: UILabel!
    
    
    var object: GlobalConstants.Menu?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func configureCell(){
        if let object = self.object {
            lblTitle.text = object.name

        }
    }
}
