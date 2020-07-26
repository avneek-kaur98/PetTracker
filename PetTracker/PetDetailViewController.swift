//
//  PetDetailViewController.swift
//  PetAppNew
//
//  Created by Zomato on 22/07/20.
//  Copyright © 2020 Zomato. All rights reserved.
//

import Foundation
import UIKit

class PetDetailViewController: UIViewController {
    
    let weekDays = ["Mon","Tues","Wed","Thurs","Fri","Sat","Sun"]
    
    let sampleLabel:UILabel = {
       let label = UILabel()
        label.textAlignment = .center
        return label
    }()
    
    let titleLabel: UILabel = {
      let label = UILabel()
       label.numberOfLines = 1
       label.font = label.font.withSize(20)
        label.textAlignment = .center
       return label
    }()
    
    
    let ownerTitleLabel:UILabel = {
          let label = UILabel()
           
           return label
    }()
    
    let speciesLabel:UILabel = {
          let label = UILabel()
          
           return label
    }()
    
    
    let WeekDayLabel:UILabel = {
          let label = UILabel()
          
           return label
    }()
    
    
    var walkTimesLabels = [UILabel]()
    
    
    let owner: UILabel = {
       let label = UILabel()
        label.numberOfLines = 1
        label.font = label.font.withSize(12)
        return label
    }()
    
    let species: UILabel = {
       let label = UILabel()
        label.numberOfLines = 1
        label.font = label.font.withSize(12)
        return label
    }()
   
   let imgView: UIImageView = {
       let imgView = UIImageView()
      return imgView
   }()
    
    let stackView:UIStackView = {
        let st = UIStackView()
        st.axis = .vertical
        st.alignment = .leading
        st.distribution = .equalSpacing
        st.spacing = 8
        return st
    }()
    
    let backBtn: UIButton = {
        let button = UIButton()
        button.setTitle("Back", for: .normal)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setUpLayout()
        
    }
    
    
    
    func  setUpLayout(){
        
       
       
        
        
        
        view.addSubview(backBtn)
        view.addSubview(imgView)
        view.addSubview(titleLabel)
        view.addSubview(sampleLabel)
        view.addSubview(ownerTitleLabel)
        view.addSubview(owner)
        view.addSubview(speciesLabel)
        view.addSubview(species)
        view.addSubview(WeekDayLabel)
        
        for _ in 0..<7{
            let label = UILabel()
            label.font = label.font.withSize(12)
            walkTimesLabels.append(label)
            stackView.addArrangedSubview(label)
        }
        
       
        
        view.addSubview(stackView)
        
        
        backBtn.set(.top(view,12),
                    .leading(view,12))
        
        
        
        imgView.set(.below(backBtn),
                    .centerX(view),
                    .height(200),
                    .width(200))
        
        titleLabel.set(.sameLeadingTrailing(view),
                       .below(imgView),
                       .centerX(view))
        
        sampleLabel.set(.sameLeadingTrailing(view),
                        .below(titleLabel,8),
                        .centerX(view))
        
        ownerTitleLabel.set(.below(sampleLabel,8),
                            .sameLeadingTrailing(view,8))
        
        owner.set(.below(ownerTitleLabel,8),
                  .sameLeadingTrailing(view,8))
        
        speciesLabel.set(.below(owner,20),
                         .sameLeadingTrailing(view,8))
        
        species.set(.below(speciesLabel,8),
                    .sameLeadingTrailing(view,8))
        
        WeekDayLabel.set(.below(species,20),
                         .sameLeadingTrailing(view,8))
        
        stackView.set(.below(WeekDayLabel,12),
                      .sameLeadingTrailing(view,8))
        
    }
    
    func setData(indexPath:IndexPath){
        let pet = Datasource.getAllPets()[indexPath.row]
        
        imgView.image = UIImage(named: pet.photo)
        titleLabel.text = pet.name
        
        sampleLabel.text = "\(String(pet.petAge)) years old"
        
        ownerTitleLabel.text = "Owner"
        owner.text = pet.owner
        
        
        speciesLabel.text = "Species"
        species.text = pet.breed
        
        WeekDayLabel.text = "Walk Time"
        
        
        for i in 0..<7{
            
            walkTimesLabels[i].text = "\(weekDaysLabelString[i])  \(String(pet.walkTime[i].startTime)) to \(String(pet.walkTime[i].endTime))"
        }
        
        
        
    }

    let weekDaysLabelString = ["Mon","Tue","Wed","Thur","Fri","Sat","Sun"]
    
    
}

