//
//  ChangePasswordViewController.swift
//  IOSCourse
//
//  Created by Huda M. A'abed on 12/08/2022.
//

import UIKit


class ChangePasswordViewController: UIViewController {
    
    @IBOutlet weak var txtCurrentPassword: CustomTextFeild!
    
    @IBOutlet weak var txtNewPassword: CustomTextFeild!
    
    
    @IBOutlet weak var txtConfirmNewPassword: CustomTextFeild!
    
     
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
    @IBAction func btnSave(_ sender: Any) {
        if !validation() {
            return
        }
        debugPrint("you can save data")
    }
}


extension ChangePasswordViewController {
    func setupView(){
        txtNewPassword.keyboardType = .emailAddress
    }
    
    func localized(){
        self.title = "Change Password"
    }
    
    func setupData(){
    }
    
    func fetchData(){
    }
}



extension ChangePasswordViewController {
    func validation() -> Bool{
        if txtCurrentPassword.isValidValue == false{
            self.showAlertError(message: "Sorry , Current Password is requird!")
            return false
            
        }
        if txtNewPassword.isValidValue == false{
            self.showAlertError(message: "Sorry , New Password is requird!")
            return false
        }
        if txtConfirmNewPassword.isValidValue == false{
            self.showAlertError(message: "Sorry , Confirm New Password is requird!")
            return false
        }
        if txtNewPassword.text != txtConfirmNewPassword.text {
            self.showAlertError(message: "Sorry , New Password do not match")
            return false
        }
        return true
    }
}
