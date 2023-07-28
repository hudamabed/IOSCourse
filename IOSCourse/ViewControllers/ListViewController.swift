//
//  ListViewController.swift
//  IOSCourse
//
//  Created by Huda M. A'abed on 25/06/2022.
//

import UIKit
class ListViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    var objects: [Rating] = []
    
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

extension ListViewController {
    func setupView(){
    }
    
    func localized(){
    }
    
    func setupData(){
        objects.append(Rating.init(imageProfile: "icDemo1", userName: "Cheesy Does It ", descrption: "Lorem ipsum dolor sit amet, consec tetur adipiscing elit, sed do eiusmo temp cididunt ut labore et dolore magna aliqua. Ut enim ad mini veniam quis.", rating: 4.5))
        
        objects.append(Rating.init(imageProfile: "icDemo2", userName: "Wok N' Roll ", descrption: "Lorem ipsum dolor sit amet consectetur. ",   rating: 4.5))
        
        objects.append(Rating.init(imageProfile: "icDemo3", userName: "Le Bernardin ", descrption: "Lorem ipsum dolor sit amet consectetur.", rating: 5))
        
        objects.append(Rating.init(imageProfile: "icDemo4", userName: "Uncle Boons ", descrption: "Lorem ipsum dolor sit amet consectetur.", rating:nil))
        self.tableView.reloadData()
    }
    
    func fetchData(){
    }
}
 


extension ListViewController: UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return objects.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: SettingTableViewCell = tableView.dequeueReusableCell(withIdentifier: "SettingTableViewCell", for: indexPath) as! SettingTableViewCell
        
        let object = self.objects[indexPath.row]
        cell.object = object
        cell.configureCell()
        return cell 
          
    }
    
}

extension ListViewController:UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        debugPrint("Cell is Selected")

    }
    
    ///set tableview Height           
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
}

    
    

