//
//  DetailsViewController.swift
//  IOSCourse
//
//  Created by Huda M. A'abed on 23/06/2022.
//

import UIKit
class DetailsViewController: UIViewController {
    
    @IBOutlet weak var lblDetails: UILabel!
    
   
    
    var details : String?
    
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





extension DetailsViewController {
    func setupView(){
        
        
    }
    
    func localized(){
        
        
    }
    
    func setupData(){
        lblDetails.text = details
        
    }
    
    func fetchData(){
        
        
    }
}



extension DetailsViewController {
    
    
    
}
