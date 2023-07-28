//
//  GlobalConstants.swift
//  IOSCourse
//
//  Created by Huda M. A'abed on 24/07/2022.
//

import Foundation
import UIKit


class GlobalConstants {

    enum Menu {
        case home
        case profile
        case storage
        case shared
        case status
        case settings
        case help

        
        var name: String{
            switch self {
            case .home:
                return "Home"
            case .profile:
                return "Profile"
            case .storage:
                return "Storage"
            case .shared:
                return "Shared"
            case .status:
                return "Status"
            case .settings:
                return "Settings"
            case .help:
                return "Help"
            
            }
        }
    }
    
    enum Settings{
        case addAccount
        case changePassword
        case changeLanguage
        case upgradePlan
        case multiplayAccount
        
        
        
        var name: String{
            switch self {
            case .addAccount:
                return "Add Account"
            case .changePassword:
                return "Change Password"
            case .changeLanguage:
                return "Change Language"
            case .upgradePlan:
                return "Upgrade Plan"
            case .multiplayAccount:
                return "Multiplay Account"
                
            }
        }
    }
}
