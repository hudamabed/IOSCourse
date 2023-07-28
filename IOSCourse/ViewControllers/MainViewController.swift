//
//  MainViewController.swift
//  IOSCourse
//
//  Created by Huda M. A'abed on 12/04/2022.
//

import UIKit
    
class MainViewController: UIViewController {

    @IBOutlet weak var viewCenter: UIView!
    
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
    
    @IBOutlet weak var txtUsername: UITextField!
    
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc = segue.destination as? UiKitVcViewController {
            vc.lblTitle.text  = sender as? String

    }
    }

    
      @IBAction func btnLogin(_ sender: Any) {
        self.safeperformSegue(withIdentifier:"toUiKitVC", sender:txtUsername.text )
          debugPrint("btnLogin is pressed")
    }
    
    
    
    
    @IBAction func btnGoogle(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
        
    }
}





extension MainViewController {
    func setupView(){ 
//        viewCenter.layer.cornerRadius = 40
        
//        viewCenter.layer.borderColor = UIColor.init(red: 122/255, alpha: 1).cgColor
        
//        viewCenter.layer.borderColor = UIColor.init(red: 230/255, green: 130/255, blue: 200/255, alpha: 1).cgColor
        
        /// Convert hex string and returns a UIColor
//        viewCenter.layer.borderColor = UIColor.init(hexString: "#306425").cgColor
        
        ///conver String to UIcolor
//        viewCenter.layer.borderColor = "#306425".color_.cgColor
        
//       viewCenter.layer.borderColor = "#306425".colorcg_
        
//       viewCenter.layer.borderColor = "#306425".color2_
        
        
        /// From assets
        //viewCenter.layer.borderColor = UIColor.init(named: "#FFFF00")?.cgColor
        
        /// after edit the String EX , becouse the previous code null
//        viewCenter.layer.borderColor = "#FFFF00".color2_
        
        
        //#colorLiteral
//        viewCenter.layer.borderColor = #colorLiteral(red: 0.1019607857, green: 0.2784313858, blue: 0.400000006, alpha: 1)
//
//        viewCenter.layer.borderWidth = 4
          
        ///  For shadowColor
//        viewCenter.backgroundColor = .red
//        viewCenter.layer.shadowColor = "#306425".color2_
//        viewCenter.layer.shadowRadius = 5
//        viewCenter.layer.shadowOffset = CGSize.init(width: 0, height: 0)
//        viewCenter.layer.shadowOpacity = 0.57
        
         
    }
    
    func localized(){
    }
    
    func setupData(){
    }
    
    func fetchData(){
    }
}



extension MainViewController {
    
    
    
    
}
