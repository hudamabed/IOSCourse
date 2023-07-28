//
//  SwitchTableViewCell.swift
//  IOSCourse
//
//  Created by Huda M. A'abed on 15/08/2022.
//

import UIKit

class SwitchTableViewCell: UITableViewCell {

    
    @IBOutlet weak var lblTitle: UILabel!
    
     var object: Enable?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func configureCell(){
        if let object = self.object {
            lblTitle.text = object.enable

        }
    }
}
