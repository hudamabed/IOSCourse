//
//  GridCollectionViewCell.swift
//  IOSCourse
//
//  Created by Huda M. A'abed on 29/06/2022.
//

import UIKit
class GridCollectionViewCell: UICollectionViewCell   {
    @IBOutlet weak var imgCover: UIImageView!
     
    @IBOutlet weak var btnLove: UIButton!
    
    var object: Collection?
    var parentViewController: UIViewController?
    
    func configureCell(){
        if let object = object {
            imgCover.image = object.imgCover?.image_
//          imgCover.image = UIImage.init(named: object.imgCover ?? "")
            btnLove.isSelected = object.isFavorite 
            
        }
        
    }
    
    @IBAction func btnLove(_ sender: Any) {
        if let object = object ,let parent = self.parentViewController as? GridViewController {
            btnLove.isSelected.toggle()
            if let index = parent.objects.firstIndex(where:{ $0?.id == object.id}) {
                parent.objects[index]?.isFavorite = btnLove.isSelected
             
            
            }
        }
    }
}

