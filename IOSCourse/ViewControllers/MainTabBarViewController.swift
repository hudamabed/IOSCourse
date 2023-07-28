//
//  MainTabBarViewController.swift
//  IOSCourse
//
//  Created by Huda M. A'abed on 04/07/2022.
//

import UIKit

class MainTabBarViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupData()
        localized()
        fetchData()
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
    }
}

extension MainTabBarViewController {
    func setupView(){
    
        
    
        
//        self.tabBar.unselectedItemTintColor = .red
    }
    
    func localized(){
    }
    
    func setupData(){
    }
    
    func fetchData(){
    }
}



extension MainTabBarViewController {
    
    
    
}

