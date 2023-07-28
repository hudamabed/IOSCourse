//
//  StorageViewController.swift
//  IOSCourse
//
//  Created by Huda M. A'abed on 13/08/2022.
//

import UIKit

class StorageViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var objects: [(header: Any, items:[Any])] = []
    
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

extension StorageViewController {
    func setupView(){
        tableView.registerXib(cell: StorageTableViewCell.self )

    }
    
    func localized(){
        self.title = "Storage"
    }
    
    func setupData(){
        objects.removeAll()
        tableView.reloadData()
        objects.append((header: "Internal Storage", items: ["Design Files" , "Images" , "Videos"]))
        objects.append((header: "External Storage", items: ["Documents" , "Others"]))
        tableView.reloadData()
    }
    
    func fetchData(){
    }
}



extension StorageViewController: UITableViewDelegate , UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return objects.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let obj = objects[section]
        return obj.items.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: StorageTableViewCell = tableView.dequeueReusableCell(withIdentifier: StorageTableViewCell.id, for: indexPath) as! StorageTableViewCell
        let obj = self.objects[indexPath.section].items[indexPath.row] as? String
        cell.object = obj
        cell.configureCell()
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
        
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let view = StorageHeader()
        let obj = objects[section].header as? String
        view.Title = obj
        return view
        
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 43
        
        
    }
}
