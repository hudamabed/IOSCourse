//
//  LoginViewController.swift
//  IOSCourse
//
//  Created by Huda M. A'abed on 17/06/2022.
//

import UIKit
import Alamofire

class LoginViewController: UIViewController {
    @IBOutlet weak var stackParnet: UIStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupData()
        localized()
        fetchData()
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.isHidNavigation = true
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        stackParnet.directionalLayoutMargins.top = getStatusBarHeight() * -1
    }
    
    deinit {
        debugPrint("LoginViewController is dealocated")
    }
    
    @IBAction func btnSign(_ sender: Any) {
        //                let vc = UIStoryboard.mainStorybored.instantiateViewController(withIdentifier: "HomeViewController")
        //                self.navigationController?.pushViewController(vc, animated: true)
        //                vc.rootPush()
        let header: HTTPHeaders =  ["Accept": "application/json", "Authorization": ""]
        
        guard let url = URL.init(string:"https://jsonplaceholder.typicode.com/posts") else {return}
        
        var parameters: [String: Any] = [:]
        parameters["email"] = ""
        parameters["password"] = ""
        //   MBProgressHUD.showAdded(to: self.view, animated: true)
        //                MBProgressHUD.showAdded(to:(UIApplication.topViewController ?? self).view, animated: true)
        AF.request(url, method: .post, parameters: parameters, headers: header).responseString { result in
            // MBProgressHUD.hide (for: self.view, animated: true)
            switch result.result{
            case .success(let data):
                debugPrint("Https status: \n \(result.response?.statusCode ?? 0)")
                debugPrint ("Reponse: In \(data)")
            case .failure(let error):
                debugPrint (error.localizedDescription)
            }
        }
    }
    @IBAction func btnInstagram(_ sender: Any) {
        let header: HTTPHeaders =  ["Accept": "application/json", "Authorization": ""]
        guard let url = URL.init(string:"https://jsonplaceholder.typicode.com/posts") else {return}
        AF.request(url, method: .get,encoding: URLEncoding.default, headers: header).responseJSON { response in
            switch response.result{
            case .success(let data):
                if let data = response.data{
                do{
                debugPrint(response)
                //let responseString = response.description
             //   self.showApiViewController(jsonData: response)

                    if let response = try? JSONSerialization.jsonObject(with: data, options: .fragmentsAllowed) as? [[String : Any]]{
                            //if let response = data as? [[String: Any]] {
                            //let responseString = response.description
                            //self.showApiViewController(jsonData: responseString)
                            debugPrint(response)
                        }
               } catch {
                 debugPrint("ERROR")
               }
               } else {
              debugPrint("There is No Data")
             }
           case .failure(let error):
               debugPrint (error.localizedDescription)
        }
    }
}
            
            
            func showApiViewController(jsonData: String) {
                let storyboard = UIStoryboard(name: "Main", bundle: nil)
                if let apiViewController = storyboard.instantiateViewController(withIdentifier: "ApiViewController") as? ApiViewController {
                    apiViewController.jsonData = jsonData
                    navigationController?.pushViewController(apiViewController, animated: true)
                }
        }
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if segue.identifier == "showApiViewSegue" {
//            if let jsonString = sender as? String,
//               let apiViewController = segue.destination as? ApiViewController {
//                apiViewController.jsonData = jsonString
//            }
//        }
//    }
  
            @IBAction func btnSmartId(_ sender: Any) {
                let vc = UIStoryboard.mainStorybored.instantiateViewController(withIdentifier: "HomeViewController")
                vc.rootPush()
            }
        }


        extension LoginViewController {
            func setupView(){
   
            }
            
            func localized(){
                self.title = "Login"

            }
            
            func setupData(){
            }
            
            func fetchData(){
            }
        }
        
        
        
        extension LoginViewController {
            
            
            
        }

     
    

    

