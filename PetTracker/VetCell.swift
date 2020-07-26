//
//  VetCell.swift
//  PetAppNew
//
//  Created by Zomato on 22/07/20.
//  Copyright © 2020 Zomato. All rights reserved.
//

import Foundation
import UIKit

class VetCell: UICollectionViewCell {
    
    let imgView: UIImageView = {
        let imgView = UIImageView()
        return imgView
    }()
    
    let nameLabel: UILabel = {
       let label = UILabel()
        label.numberOfLines = 1
        label.textAlignment = .center
        
        return label
    }()
    
    let ratingsLabel:UILabel = {
       let label = UILabel()
        label.numberOfLines = 1
        label.font = label.font.withSize(16)
        label.textColor = .gray
        return label
    }()
    
    let distLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 1
        label.font = label.font.withSize(16)
        label.textColor = .gray
        return label
    }()
    
    let stackView:UIStackView = {
        let st = UIStackView()
        st.axis = .vertical
        st.alignment = .leading
       // st.distribution = .equalSpacing
        st.spacing = 0
        return st
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func setUpLayout(){
        stackView.addArrangedSubview(nameLabel)
        stackView.addArrangedSubview(ratingsLabel)
        stackView.addArrangedSubview(distLabel)
        
        
        contentView.addSubview(imgView)
        contentView.addSubview(stackView)
        
        
        
        imgView.set(.width(200),
                    .height(100),
                    .top(contentView,8),
                    .leading(contentView,8))
        
        stackView.set(.below(imgView,8),
                      .leading(contentView,8))
        
        
        
    }
    
    func setData(name: String, rating:String, distance:String,imgString: String){
        nameLabel.text = name
        ratingsLabel.text = "rating: \(rating)"
        distLabel.text = "distance: \(distance)"
        imgView.image = UIImage(named: imgString)
    }
}
