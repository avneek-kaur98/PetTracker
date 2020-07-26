//
//  VetCollectionView.swift
//  PetAppNew
//
//  Created by Zomato on 24/07/20.
//  Copyright © 2020 Zomato. All rights reserved.
//

import Foundation
import UIKit

class VetCollectionView: UICollectionViewCell,UICollectionViewDelegate,UICollectionViewDataSource {
    
    let vets = Datasource.getAllVets()
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return vets.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: VetCell.self.description(), for: indexPath) as? VetCell
        cell?.setData(name: vets[indexPath.row].name, rating: String(vets[indexPath.row].ratingCount), distance: "\(String(vets[indexPath.row].distanceInKm)) km", imgString: vets[indexPath.row].imageName)
        return cell!
    }
    
    
    let collectionView2: UICollectionView = {
        let collectionViewFlowLayout = UICollectionViewFlowLayout()
        collectionViewFlowLayout.scrollDirection = .horizontal
        collectionViewFlowLayout.minimumInteritemSpacing = 8
        collectionViewFlowLayout.itemSize = CGSize(width: 210, height: 200)
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: collectionViewFlowLayout)
        return collectionView
    }()
    
       
    func setUpCollectionView(){
            
           
            
    
        contentView.addSubview(collectionView2)
        collectionView2.set(.fillSuperView(contentView,8))
        
        print("content view: \(contentView.bounds)")
        print("collection view: \(collectionView2.bounds)")

           
        collectionView2.register(VetCell.self, forCellWithReuseIdentifier: VetCell.self.description())
    
    
    
    
        collectionView2.allowsSelection = true
        }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        collectionView2.delegate = self
        collectionView2.dataSource = self
        collectionView2.backgroundColor = .white
       
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    
}
