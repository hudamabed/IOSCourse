//
//  ApiViewController.swift
//  IOSCourse
//
//  Created by Huda M. A'abed on 15/07/2023.
//

import UIKit

class ApiViewController: UIViewController {
    var jsonData: String?
    var userPosts: [TUserPost] = []
   // var jsonData: Data?


    @IBOutlet weak var textView: UITextView!

       
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupData()
        localized()
        fetchData()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.isHidNavigation = false
        
    }
}
    
    
    extension ApiViewController {
        func setupView(){
          // textView.text = jsonData
        }
        
        func setupData(){
        }
        
        func localized(){
            self.title = "Api Test"
        }
        
        func fetchData(){
        }
        
    }
    

