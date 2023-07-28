//
//  SettingsViewController.swift
//  IOSCourse
//
//  Created by Huda M. A'abed on 15/08/2022.
//

import UIKit

class SettingsViewController: UIViewController {
    
    @IBOutlet weak var tableViewL: UITableView!
    
    @IBOutlet weak var tableViewS: UITableView!
    
    
    var objectsSettings: [GlobalConstants.Settings] = []
    var objectsEnable: [Enable] = []
    
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

extension SettingsViewController {
    func setupView(){
        tableViewL.registerXib(cell: SettingsTableViewCell.self)
        tableViewS.registerXib(cell: SwitchTableViewCell.self)
    }
    
    func localized(){
        self.title = "Settings"
    }
    
    func setupData(){
        self.objectsSettings.removeAll()
        self.tableViewL.reloadData()
        self.objectsSettings.append(.addAccount)
        self.objectsSettings.append(.changePassword)
        self.objectsSettings.append(.changeLanguage)
        self.objectsSettings.append(.upgradePlan)
        self.objectsSettings.append(.multiplayAccount)
        self.tableViewL.reloadData()
        
        objectsEnable.append(Enable.init(enable: "Enable Sync"))
        objectsEnable.append(Enable.init(enable: "Enable 2 Step Verification"))
        tableViewS.reloadData()
        
    }
    
    func fetchData(){
        
    }
}



extension SettingsViewController :UITableViewDelegate , UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableView == tableViewL {
            return objectsSettings.count
        }
        else{
            return objectsEnable.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if tableView == tableViewL {
            let cell: SettingsTableViewCell = tableView.dequeueReusableCell(withIdentifier: "SettingsTableViewCell", for: indexPath) as! SettingsTableViewCell
            let object = self.objectsSettings[indexPath.row]
            cell.object = object
            cell.configureCell()
            return cell
        }
        
        else {
            let cell: SwitchTableViewCell = tableView.dequeueReusableCell(withIdentifier: "SwitchTableViewCell", for: indexPath) as! SwitchTableViewCell
            let object = self.objectsEnable[indexPath.row]
            cell.object = object
            cell.configureCell()
            return cell
        }
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let obj = self.objectsSettings[indexPath.row]
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5 ){
            self.dismiss(animated: true){
                switch obj {
                case .addAccount:
                    break
                case .changePassword:
                    let vc = UIStoryboard.mainStorybored.instantiateViewController(withIdentifier: "ChangePasswordViewController")
                    vc.push()
                    break
                case .changeLanguage:
                    break
                case .upgradePlan:
                    break
                case .multiplayAccount:
                    break
                }
            }
        }
    }
}

//
//extension SettingsViewController: UITableViewDelegate {
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        debugPrint("Cell is Selected")
//
//    }
//
//    ///set tableview Height
//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        return UITableView.automaticDimension
//    }
//}
