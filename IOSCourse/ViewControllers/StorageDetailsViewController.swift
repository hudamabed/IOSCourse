//
//  StorageDetailsViewController.swift
//  IOSCourse
//
//  Created by Huda M. A'abed on 05/08/2022.
//

import UIKit

class StorageDetailsViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var objects: [StorageDetails?] = []
    
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

extension StorageDetailsViewController {
    func setupView(){
        tableView.registerXib(cell: StorageDetailsTableViewCell.self )

    }
    
    func localized(){
        self.title = "Storage Details"
    }
    
    func setupData(){
        objects.append(StorageDetails.init(folderName: "Design Files", storage: "38.66 GB", color: "#22215B", progress: 0.4, progressTintColor: "#EEF7FE"))
        objects.append(StorageDetails.init(folderName: "Images", storage: "24.80 GB", color: "#FFC700", progress: 0.5, progressTintColor: "#EEF7FE"))
        objects.append(StorageDetails.init(folderName: "Video", storage: "12.60 GB", color: "#4CE364", progress: 0.6, progressTintColor: "#EEF7FE"))
        objects.append(StorageDetails.init(folderName: "Documents", storage: "06.57 GB", color: "#567DF4", progress: 0.3, progressTintColor: "#EEF7FE"))
        objects.append(StorageDetails.init(folderName: "Others", storage: "2.01 GB", color: "#FF842B", progress: 0.8, progressTintColor: "#EEF7FE"))
    }
    
    func fetchData(){
    }
}



extension StorageDetailsViewController: UITableViewDelegate , UITableViewDataSource{
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: StorageDetailsTableViewCell = tableView.dequeueReusableCell(withIdentifier: StorageDetailsTableViewCell.id, for: indexPath) as! StorageDetailsTableViewCell
        
        let obj = self.objects[indexPath.row]
        cell.object = obj
        cell.configureCell()
        return cell
        
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return  objects.count
        
    }
}



