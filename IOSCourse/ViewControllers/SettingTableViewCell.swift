//
//  SettingTableViewCell.swift
//  IOSCourse
//
//  Created by Huda M. A'abed on 25/06/2022.
//

import UIKit

class SettingTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    @IBOutlet weak var imgProfile: UIImageView!
    
    @IBOutlet weak var lblTitle: UILabel!
    
    @IBOutlet weak var lblDetails: UILabel!
    
    @IBOutlet weak var lblRating: UILabel!
    
    @IBOutlet weak var viewRating: UIImageView!
    
    var object : Rating?
    
    func configureCell(){
        if let object = object {
            imgProfile.image = UIImage.init(named: object.imageProfile ?? "")
            lblTitle.text = object.userName
            lblRating.text = "\(object.rating ?? 0)"
            lblDetails.text = object.descrption
            viewRating.isHidden = object.rating == nil
            
            
            
         }
        
        
    }

}
