//
//  GridViewController.swift
//  IOSCourse
//
//  Created by Huda M. A'abed on 29/06/2022.
//

import UIKit
class GridViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    var objects: [Collection?] = []
    
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

extension GridViewController {
    func setupView(){
    }
    
    func localized(){
    }
    
    func setupData(){
        objects.append(Collection.init(imgCover:"icDemo1" , isFavorite: true))
        objects.append(Collection.init(imgCover:"icDemo2", isFavorite: false))
        objects.append(Collection.init(imgCover:"icDemo3", isFavorite: false))
        
        objects.append(Collection.init(imgCover:"icDemo3", isFavorite: true))
        objects.append(Collection.init(imgCover:"icDemo1", isFavorite: true))
        objects.append(Collection.init(imgCover:"icDemo2", isFavorite: false))
         
        objects.append(Collection.init(imgCover:"icDemo2", isFavorite: true))
        objects.append(Collection.init(imgCover:"icDemo3", isFavorite: true))
        objects.append(Collection.init(imgCover:"icDemo1", isFavorite: false))
           
        objects.append(Collection.init(imgCover:"icDemo1" , isFavorite: true))
        objects.append(Collection.init(imgCover:"icDemo2", isFavorite: false))
        objects.append(Collection.init(imgCover:"icDemo3", isFavorite: false))
        
        objects.append(Collection.init(imgCover:"icDemo3", isFavorite: true))
        objects.append(Collection.init(imgCover:"icDemo1", isFavorite: true))
        objects.append(Collection.init(imgCover:"icDemo2", isFavorite: false))
         
        objects.append(Collection.init(imgCover:"icDemo2", isFavorite: true))
        objects.append(Collection.init(imgCover:"icDemo3", isFavorite: true))
        objects.append(Collection.init(imgCover:"icDemo1", isFavorite: false))
        self.collectionView.reloadData()
    }
    
    
    func fetchData(){
        
    }
}



extension GridViewController : UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell : GridCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "GridCollectionViewCell", for: indexPath) as! GridCollectionViewCell

        let object = self.objects[indexPath.row]
        cell.object = object
        cell.parentViewController = self 
        cell.configureCell()
        return cell
    }
      
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
     
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return objects.count
        
    }
    
}

    extension GridViewController : UICollectionViewDelegate {
        func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
            self.showAlertMessage(message: "Welcome!")
        }
    
    
}

    extension GridViewController : UICollectionViewDelegateFlowLayout {
        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
            let width = (UIScreen.main.bounds.size.width - 84) / 3
            let height = width * (300/297)
            return CGSize.init(width: width, height: height )
            
        }
        
        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
            return UIEdgeInsets.init(top: 20, left: 20, bottom: 20, right: 20)
            
        }
        
        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
            return 20
            
        }
        
        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
              return 22
             
        }
        
        
    }
