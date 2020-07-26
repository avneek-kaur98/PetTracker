//
//  CustomCell.swift
//  PetAppNew
//
//  Created by Zomato on 22/07/20.
//  Copyright © 2020 Zomato. All rights reserved.
//

import Foundation
import UIKit




class CustomCell: UICollectionViewCell{
    
   
    
    let title: UILabel = {
       let label = UILabel()
        label.numberOfLines = 1
        label.font = label.font.withSize(20)
        return label
    }()
    
    let desc: UILabel = {
       let label = UILabel()
        label.numberOfLines = 3
        label.font = label.font.withSize(7)
        return label
    }()
    
    let imgView: UIImageView = {
        let imgView = UIImageView()
       return imgView
    }()
    
    let stackView: UIStackView = {
        let st = UIStackView()
        st.axis = .vertical
        st.alignment = .leading
        st.distribution = .equalSpacing
        st.spacing = 8
        return st
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setUpLayout()
        
        
        
        
    }
    
    func setText(title: String,desc: String,imgName:String){
        self.title.text = title
        self.desc.text = desc
        self.imgView.image = UIImage(named: imgName)
    }
    
    func setUpLayout(){
        stackView.addArrangedSubview(title)
        stackView.addArrangedSubview(desc)
        
        
        
        
        
        
        contentView.addSubview(stackView)
        contentView.addSubview(imgView)
        
        
        imgView.set(.sameTopBottom(contentView,12),
                    .leading(contentView,12),
                    .width(100))
        
        stackView.set(.after(imgView,12),
                      .top(contentView,12),
                      .width(contentView.bounds.width-8))
        
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
