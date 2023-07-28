//
//  YourDribbboxViewController.swift
//  IOSCourse
//
//  Created by Huda M. A'abed on 06/08/2022.
//

import UIKit


class YourDribbboxViewController: UIViewController {
    enum ViewType {
    case list
    case grid
    }
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    @IBOutlet weak var btnList: UIButton!
    
    @IBOutlet weak var btnGrid: UIButton!
    
    @IBOutlet weak var txtFolder: UITextField!
    
    var objects: [Folder] = []

    var type: ViewType = .grid {
    didSet {
        updateUI()
    }
}
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
  
            
    
    @IBAction func btnList(_ sender: Any) {
        self.type = .list
        
    }
    
    @IBAction func btnGrid(_ sender: Any) {
        self.type = .grid
    }
    
}

extension YourDribbboxViewController {
    func setupView(){
        self.title = "My Folders"
        collectionView.registerXib(cell: FolderHorizentalCollectionViewCell.self)
        collectionView.registerXib(cell: FolderCollectionViewCell.self)
        
        updateUI()  
        
    }
    
    func localized(){
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
        collectionView.reloadData()
    }
    
    func fetchData(){
    }
}

extension YourDribbboxViewController {
    func updateUI(){
        switch type {
        case .list:
            btnGrid.isSelected = false
            btnList.isSelected = true
            break
        case .grid:
            btnList.isSelected = false
            btnGrid.isSelected = true
            break
        }
        self.collectionView.reloadData()
    }
}

extension YourDribbboxViewController: UICollectionViewDelegate , UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return objects.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        switch type {
        case .list:
            let cell: FolderHorizentalCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "FolderHorizentalCollectionViewCell", for: indexPath) as! FolderHorizentalCollectionViewCell
            let object = self.objects[indexPath.row]
            cell.object = object
            cell.configureCell()
            return cell
            
        case .grid:
            let cell: FolderCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "FolderCollectionViewCell", for: indexPath) as! FolderCollectionViewCell
            let object = self.objects[indexPath.row]
            cell.object = object
            cell.configureCell()
            return cell
        }
    }
}



extension YourDribbboxViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        switch type {
        case .list:
            let width: CGFloat = collectionView.frame.width - 60
            let height: CGFloat = 90
            let size: CGSize = CGSize.init(width: width, height: height)
            return size
            
            
        case .grid:
            let width: CGFloat = (collectionView.frame.width - 80) / 2
            let height: CGFloat = width * (107/148)
            let size: CGSize = CGSize.init(width: width, height: height)
            return size
            
        }
    }
}


