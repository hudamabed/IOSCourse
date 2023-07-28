//
//  HomeViewController.swift
//  IOSCourse
//
//  Created by Huda M. A'abed on 04/07/2022.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var proProfileCollectionView: UICollectionView!
    
    @IBOutlet weak var myFoldersCollectionView: UICollectionView!
    
    @IBOutlet weak var myFoldersConstrains: NSLayoutConstraint!
    
    @IBOutlet weak var recentUploadsTableView: UITableView!
    
    @IBOutlet weak var recentUplaodsConstrains: NSLayoutConstraint!
    
    var objects: [Folder] = []
    
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
    
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        myFoldersConstrains.constant = myFoldersCollectionView.contentSize.height
        recentUplaodsConstrains.constant = recentUploadsTableView.contentSize.height
        

    }
    
    @IBAction func btnMenu(_ sender: Any) {
    let vc = UIStoryboard.mainStorybored.instantiateViewController(withIdentifier: "MenuViewController")
    vc.pushWithoutAnimated()
    
}
    @IBAction func btnMyFolder(_ sender: Any) {
        let vc = UIStoryboard.mainStorybored.instantiateViewController(withIdentifier: "YourDribbboxViewController")
        vc.push()
        
        
    }
    @IBAction func btnStorage(_ sender: Any) {
        let vc = UIStoryboard.mainStorybored.instantiateViewController(withIdentifier: "StorageDetailsViewController")
        vc.push()
    }
}


extension HomeViewController {
    func setupView(){
        myFoldersCollectionView.register(UINib.init(nibName: "FolderCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "FolderCollectionViewCell")
        proProfileCollectionView.register(UINib.init(nibName: "ProProfileCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "ProProfileCollectionViewCell")
//        recentUploadsTableView.register(UINib.init(nibName: "RecentUploadsTableViewCell", bundle: nil), forCellReuseIdentifier: "RecentUploadsTableViewCell")
        recentUploadsTableView.registerXib(cell: RecentUploadsTableViewCell.self)
    } 
    
    func localized(){
        self.title = "My Profile"
    }
    
    func setupData(){
        objects.append(Folder.init(folderImage: "icBlueFolder", folderName: "Mobile Apps", date: "December 20.2020", color: "#415EB6", backgroundColor: "#EEF7FE"))
        
        objects.append(Folder.init(folderImage: "icYallowFolder", folderName: "SVG Icons", date: "December 14.2020", color: "#FFB110", backgroundColor: "#FFFBEC"))
        
        objects.append(Folder.init(folderImage: "icRedFolder", folderName: "Prototypes", date: "Novemaber 22.2020", color: "#AC4040", backgroundColor: "#FEEEEE"))
        
        objects.append(Folder.init(folderImage: "icGreenFolder", folderName: "Avatars", date: "Novemaber 10.2020", color: "#23B0B0", backgroundColor: "#F0FFFF"))
        
        objects.append(Folder.init(folderImage: "icBlueFolder", folderName: "Mobile Apps", date: "December 20.2020", color: "#415EB6", backgroundColor: "#EEF7FE"))
        
        objects.append(Folder.init(folderImage: "icYallowFolder", folderName: "SVG Icons", date: "December 14.2020", color: "#FFB110", backgroundColor: "#FFFBEC"))
        
        objects.append(Folder.init(folderImage: "icRedFolder", folderName: "Prototypes", date: "Novemaber 22.2020", color: "#AC4040", backgroundColor: "#FEEEEE"))
        
        objects.append(Folder.init(folderImage: "icGreenFolder", folderName: "Avatars", date: "Novemaber 10.2020", color: "#23B0B0", backgroundColor: "#F0FFFF"))
       
        myFoldersCollectionView.reloadData()
        
    }
    
    func fetchData(){
    }
}



extension HomeViewController : UITableViewDelegate , UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return 3
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: RecentUploadsTableViewCell = tableView.dequeueReusableCell(withIdentifier: "RecentUploadsTableViewCell" , for: indexPath) as! RecentUploadsTableViewCell
        return cell
    }
    
}



extension HomeViewController : UICollectionViewDataSource , UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return objects.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == proProfileCollectionView  {
            let cell: ProProfileCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProProfileCollectionViewCell", for: indexPath) as! ProProfileCollectionViewCell
        return cell
        }
        else{
            let cell: FolderCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "FolderCollectionViewCell", for: indexPath) as! FolderCollectionViewCell
            let object = self.objects[indexPath.row]
            cell.object = object
            cell.configureCell()
            return cell
    }
    }
    
}

    extension HomeViewController: UICollectionViewDelegateFlowLayout {
        
        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
            if collectionView == proProfileCollectionView  {
            let width: CGFloat = collectionView.frame.width
                let height: CGFloat = collectionView.frame.height
            let size: CGSize = CGSize.init(width: width, height: height)
            return size
//                collectionView.frame.size
        }
        else {
            let width: CGFloat = (collectionView.frame.width - 19) / 2
            let height: CGFloat = width * (107/148)
            let size: CGSize = CGSize.init(width: width, height: height)
            return size
            
            
        }
        }
        
    }



