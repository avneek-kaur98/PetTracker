//
//  ViewController.swift
//  PetTracker
//
//  Created by Zomato on 26/07/20.
//  Copyright © 2020 Zomato. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    
   

    let collectionView = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout())
    
   
       
    
    let pets = Datasource.getAllPets()
    
 
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("view: \(view.bounds)")
       
        setUpCollectionView()

        
    }
    
    func setUpCollectionView(){
        collectionView.delegate = self
        collectionView.dataSource = self
        // set background to white
        collectionView.backgroundColor = .white
       
        
        view.addSubview(collectionView)

        
        collectionView.set(.fillSuperView(view,8))
        collectionView.register(CustomCell.self, forCellWithReuseIdentifier: CustomCell.self.description())
        collectionView.register(VetCollectionView.self, forCellWithReuseIdentifier: VetCollectionView.self.description())
        collectionView.allowsSelection = true
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {

        return pets.count+1
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        

        
        if indexPath.row<pets.count{
              let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CustomCell.self.description(), for: indexPath) as? CustomCell
            
                cell?.setText(title: "\(pets[indexPath.row].name)", desc: "\(pets[indexPath.row].description)",imgName: pets[indexPath.row].photo)
                    return cell!
        }
        else{
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: VetCollectionView.self.description(), for: indexPath) as? VetCollectionView
            
            cell?.setUpCollectionView()
            
            return  cell!
        }
    
    }
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if indexPath.row < pets.count {
            let viewController = PetDetailViewController()
            self.present(viewController,animated: true,completion: nil)
            viewController.setData(indexPath: indexPath)
        }
    }

    
    

}

//use layout with collection view


extension ViewController: UICollectionViewDelegateFlowLayout {

    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        if indexPath.row<pets.count{
            return CGSize(width: collectionView.bounds.size.width - 16, height: 100)
        }
        else{
            return CGSize(width: view.bounds.width-16, height: 200)
        }
    }
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 8
    }

    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }

    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets.init(top: 8, left: 8, bottom: 8, right: 8)
    }
}




