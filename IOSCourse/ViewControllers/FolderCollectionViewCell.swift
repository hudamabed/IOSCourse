//
//  FolderCollectionViewCell.swift
//  IOSCourse
//
//  Created by Huda M. A'abed on 15/07/2022.
//

import UIKit

class FolderCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var imgFolder: UIImageView!
    
    @IBOutlet weak var lblName: UILabel!
    
    @IBOutlet weak var lblDate: UILabel!
    
    @IBOutlet weak var stackView: UIStackView!
    
    @IBOutlet weak var Btn: UIButton!
    
    var object: Any?
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    func configureCell(){
        if let object = self.object as? Folder {
            imgFolder.image = UIImage.init(named: object.folderImage ?? "")
            lblName.text = object.folderName
            lblDate.text = object.date
            stackView.backgroundColor = UIColor(named: object.backgroundColor ?? "")?.withAlphaComponent(0.16)
            lblDate.textColor = UIColor(named: object.color ?? "")
            lblName.textColor = UIColor(named: object.color ?? "")
            Btn.tintColor = UIColor(named: object.color ?? "")
        }
        
    }
}
 
