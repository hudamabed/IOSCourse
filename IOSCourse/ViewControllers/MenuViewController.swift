//
//  MenuViewController.swift
//  IOSCourse
//
//  Created by Huda M. A'abed on 17/07/2022.
//

import UIKit

class MenuViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var viewProfileImage: UIView!
    
    var objects:[GlobalConstants.Menu] = []
    
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
    @IBAction func brnDismiss(_ sender: Any) {
        self.navigationController?.popViewController(animated: false)
    }
    
    @IBAction func btnLogout(_ sender: Any) {
        let vc = UIStoryboard.mainStorybored.instantiateViewController(withIdentifier: "LoginViewController")
        vc.push()
        
    }
    
    
}

extension MenuViewController {
    func setupView(){
        viewProfileImage.layer.maskedCorners = UserProfile.shared.isRTL ? [.layerMinXMaxYCorner] : [.layerMaxXMaxYCorner]
        viewProfileImage.layer.cornerRadius = 53
        tableView.registerXib(cell: MenuTableViewCell.self )
        
    }
    
    func localized(){
    }
    
    func setupData(){
        self.objects.removeAll()
        self.tableView.reloadData()
        self.objects.append(.home)
        self.objects.append(.profile)
        self.objects.append(.storage)
        self.objects.append(.shared)
        self.objects.append(.status)
        self.objects.append(.settings)
        self.objects.append(.help)
        self.tableView.reloadData()


        
    }
    
    func fetchData(){
        
    }
}



extension MenuViewController: UITableViewDelegate , UITableViewDataSource{
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: MenuTableViewCell = tableView.dequeueReusableCell(withIdentifier: MenuTableViewCell.id, for: indexPath) as! MenuTableViewCell
        
        let obj = self.objects[indexPath.row]
        cell.object = obj
        cell.configureCell()
        return cell
        
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        self.objects.count
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let obj = self.objects[indexPath.row]
        self.navigationController?.popViewController(animated: false)
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5 ){
        self.dismiss(animated: true){
            switch obj{
            case .home:
                break
            case .profile:
                break
            case .storage:
                let vc = UIStoryboard.mainStorybored.instantiateViewController(withIdentifier: "StorageDetailsViewController")
                vc.push()
                break
            case .shared:
                let vc = UIStoryboard.mainStorybored.instantiateViewController(withIdentifier: "StorageViewController")
                vc.push()
                break
            case .status:
                break
            case .settings:
                let vc = UIStoryboard.mainStorybored.instantiateViewController(withIdentifier: "SettingsViewController")
                vc.push()
                break
            case .help:
                break
                }
            }
        }
    }
}
