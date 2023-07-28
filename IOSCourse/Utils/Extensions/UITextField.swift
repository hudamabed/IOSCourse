//
//  UITextField.swift
//  IOSCourse
//
//  Created by Huda M. A'abed on 10/08/2022.
//

import Foundation
import UIKit


extension UITextField{
   @IBInspectable var placeHolderColor: UIColor? {
        get {
            return self.placeHolderColor
        }
        set {
            self.attributedPlaceholder = NSAttributedString(string:self.placeholder != nil ? self.placeholder! : "", attributes:[NSAttributedString.Key.foregroundColor: newValue!])
        }
    }
}




///Change colorpalceholder . 
//@IBOutlet weak var txtFolder: UITextField!
//        didSet {
//            let PlaceholderText = NSAttributedString(string:"Search Folder",attributes: [NSAttributedString.Key.foregroundColor:"#22215B".color_])
//
//            txtFolder.attributedPlaceholder = PlaceholderText
//        }
//    }
