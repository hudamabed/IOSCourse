//
//  UiKitVcViewController.swift
//  IOSCourse
//
//  Created by Huda M. A'abed on 17/06/2022.
//

import UIKit

class UiKitVcViewController: UIViewController {
            
    @IBOutlet weak var txtEmail: UITextField!
     
    @IBOutlet weak var indicator: UIActivityIndicatorView!
    
    @IBOutlet weak var switchAction: UISwitch!
     
    @IBOutlet weak var switchCo : UISwitch!
    
    @IBOutlet weak var progress: UIProgressView!
    
    @IBOutlet weak var slider: UISlider!
    
    @IBOutlet weak var lblTitle: UILabel!
    
     
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
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc = segue.destination as? DetailsViewController {
            vc.details = sender as? String

    }
    }
     
    @IBAction  func unwindToUiKitVC(_sender : UIStoryboardSegue) {
    
    }
    
    
    
    @IBAction func btnAction(_ sender: Any) {
//        debugPrint("Your Email is \(txtEmail.text ?? "   Huda")")
           
        let vc = UIStoryboard.mainStorybored .instantiateViewController(withIdentifier: "LoginViewController") as? LoginViewController
         vc?.push()
//          vc?.details = "Data Transfared"
//          vc?.modalPresentationStyle = .fullScreen
//          vc?.presenVC()
//           vc?.push()
          
   
//        self.showAlert(title : "Alert", message: "Sorry", buttonTitle1: "Install", buttonTitle2: "Cancel", buttonTitle3: "h") {
//            debugPrint("clouser action button1")
//        } buttonAction2: {
//            debugPrint("clouser action button2")
//        } buttonAction3: {
//            debugPrint("clouser action button3")
//        }
        
        
//        if txtEmail.text?.count ?? 0 == 0 {
//        self.showAlertError(message:"Enter your Email")
//
//        }
//        self.showAlertMessage(message: "Sorry , Service is not available ")

        
        ///segue
//        safeperformSegue(withIdentifier:"toDetailsVC", sender: "Data Transfared")
  
}
    
    
    @IBAction func switchAction(_ sender: Any) {
        if switchAction.isOn {
            indicator.startAnimating()
        }
        else {
            indicator.stopAnimating()
        }
    }
    
    
    @IBAction func switchColor(_ sender: Any)
    {
        if switchCo.isOn{
            view.backgroundColor = .red
            
        }
        else {
            view.backgroundColor = .black

        }
    }
    
    
    @IBAction func getDissKeybored(_ sender: Any) {
        self.view.endEditing(false)
        
    }
    
    @IBAction func slider(_ sender: Any) {
        self.progress.progress = slider.value 
    
    
    
    }
    
    
}
                


        extension UiKitVcViewController {
            func setupView(){
                progress.progress = 0.9
                progress.progressTintColor = .green
                progress.trackTintColor = .blue
                
                  
                
            }
            
            func localized(){
            }
            
            func setupData(){
                txtEmail.text = "huda@gmai.com"
                
                
                
            }
            
            func fetchData(){
            }
        }
        
        
        
    extension UiKitVcViewController : UITextFieldDelegate {
        func textFieldDidEndEditing(_ textField: UITextField) {
            textField.layer.borderColor = UIColor.red.cgColor
            textField.layer.borderWidth = 1


        }
            
        func textFieldDidBeginEditing(_ textField: UITextField) {
            textField.layer.borderColor = UIColor.blue.cgColor
            textField.layer.borderWidth = 1
            
            
            
            
                    }
        }




