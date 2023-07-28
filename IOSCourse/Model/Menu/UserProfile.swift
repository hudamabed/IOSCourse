//
//  UserProfile.swift
//  IOSCourse
//
//  Created by Huda M. A'abed on 17/07/2022.
//

import Foundation
import UIKit


class UserProfile{
    
    static let shared = UserProfile()
    var isRTL:Bool{
        return UIApplication.shared.userInterfaceLayoutDirection == .rightToLeft

    }
}
