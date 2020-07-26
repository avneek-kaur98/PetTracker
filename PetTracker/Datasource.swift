//
//  Datasource.swift
//  Zomato Stays
//
//  Created by Mehul Srivastava on 28/06/20.
//  Copyright © 2020 Mehul Srivastava. All rights reserved.
//

import Foundation

struct Vet {
    let name: String
    let distanceInKm: Double
    let ratingCount: Int
    let imageName: String
}

struct Pet {
    let name: String
    let photo: String
    let description: String
    let owner: String
    let breed: String
    let petAge: Double
    let walkTime: [DayTime]
}

struct DayTime {
    let day: String
    let startTime: String
    let endTime: String
}


struct Datasource {
    
    static func getAllVets() -> [Vet] {
        return [VetsData.vet1, VetsData.vet2, VetsData.vet3, VetsData.vet4, VetsData.vet5, VetsData.vet6, VetsData.vet7,
                VetsData.vet8, VetsData.vet9, VetsData.vet10]
    }
    
    static func getAllPets() -> [Pet] {
        return [PetsData.pet1, PetsData.pet2, PetsData.pet3,PetsData.pet4,PetsData.pet5,PetsData.pet6,PetsData.pet7,PetsData.pet7,PetsData.pet8,PetsData.pet9]
    }
    
}

enum VetsData {
    static let vet1: Vet = Vet(name: "Dr. Michael", distanceInKm: 1.2, ratingCount: 20, imageName: "vet1")
    static let vet2: Vet = Vet(name: "Dr. Henderson", distanceInKm: 4.2, ratingCount: 22, imageName: "vet2")
    static let vet3: Vet = Vet(name: "Dr. Rohan", distanceInKm: 1.5, ratingCount: 34, imageName: "vet3")
    static let vet4: Vet = Vet(name: "Dr. Sean Paul Gautier", distanceInKm: 10.2, ratingCount: 67, imageName: "vet4")
    static let vet5: Vet = Vet(name: "Dr. Bloomberg Walcott", distanceInKm: 0.2, ratingCount: 2, imageName: "vet5")
    
    static let vet6: Vet = Vet(name: "Dr. Michael", distanceInKm: 1.2, ratingCount: 20, imageName: "vet1")
    static let vet7: Vet = Vet(name: "Dr. Henderson", distanceInKm: 4.2, ratingCount: 22, imageName: "vet2")
    static let vet8: Vet = Vet(name: "Dr. Rohan", distanceInKm: 1.5, ratingCount: 34, imageName: "vet3")
    static let vet9: Vet = Vet(name: "Dr. Sean Paul Gautier", distanceInKm: 10.2, ratingCount: 67, imageName: "vet4")
    static let vet10: Vet = Vet(name: "Dr. Bloomberg Walcott", distanceInKm: 0.2, ratingCount: 2, imageName: "vet5")
}

enum PetsData {
    static let pet1: Pet = Pet(name: "Bruno", photo: "pet1", description: "The Afador is a mixed breed dog–a cross between the Afghan Hound and Labrador Retriever dog breeds. Loyal, energetic, and affectionate, these pups inherited some of the best qualities from both of their parents. Afadors are also sometimes known as the Afghan Lab. You can find these mixed breed dogs in shelters and breed specific rescues, so remember to always adopt! Don’t shop if you’re looking to add an Afador to your home.", owner: "Rohan", breed: "Labrador", petAge: 1.4, walkTime: DayTimeData.dayTime1)
    static let pet2: Pet = Pet(name: "Bazel", photo: "pet2", description: "The Akita Chow is a mixed breed dog–a cross between the Akita and Chow Chow dog breeds. Large, independent, and loyal, these pups inherited some of the best traits from both of their parents.The Akita Chow can also be called Chakita. Despite their unfortunate status as a designer breed, you may find these mixed breed pups in shelters and breed specific rescues, so remember to adopt! Don’t shop!", owner: "Seffani Fernandez", breed: "Dashunt", petAge: 7, walkTime:DayTimeData.dayTime1)
    static let pet3: Pet = Pet(name: "Brownie", photo: "pet3", description: "A descendent of the English Foxhound, this hunting dog breed is known for his speed, endurance, and loud voice in the field. The American English Coonhound will bark and bay at home, too, making him a poor choice if you’ve got nearby neighbors. He needs lots of exercise.", owner: "Shawn", breed: "German Shephard", petAge: 4, walkTime: DayTimeData.dayTime1)
    
    static let pet4: Pet = Pet(name: "Bruno", photo: "pet1", description: "The Afador is a mixed breed dog–a cross between the Afghan Hound and Labrador Retriever dog breeds. Loyal, energetic, and affectionate, these pups inherited some of the best qualities from both of their parents. Afadors are also sometimes known as the Afghan Lab. You can find these mixed breed dogs in shelters and breed specific rescues, so remember to always adopt! Don’t shop if you’re looking to add an Afador to your home.", owner: "Rohan", breed: "Labrador", petAge: 1.4, walkTime: DayTimeData.dayTime1)
    
    static let pet5: Pet = Pet(name: "Bazel", photo: "pet2", description: "The Akita Chow is a mixed breed dog–a cross between the Akita and Chow Chow dog breeds. Large, independent, and loyal, these pups inherited some of the best traits from both of their parents.The Akita Chow can also be called Chakita. Despite their unfortunate status as a designer breed, you may find these mixed breed pups in shelters and breed specific rescues, so remember to adopt! Don’t shop!", owner: "Seffani Fernandez", breed: "Dashunt", petAge: 7, walkTime:DayTimeData.dayTime1)
    
    static let pet6: Pet = Pet(name: "Brownie", photo: "pet3", description: "A descendent of the English Foxhound, this hunting dog breed is known for his speed, endurance, and loud voice in the field. The American English Coonhound will bark and bay at home, too, making him a poor choice if you’ve got nearby neighbors. He needs lots of exercise.", owner: "Shawn", breed: "German Shephard", petAge: 4, walkTime: DayTimeData.dayTime1)
    
    
    static let pet7: Pet = Pet(name: "Bruno", photo: "pet1", description: "The Afador is a mixed breed dog–a cross between the Afghan Hound and Labrador Retriever dog breeds. Loyal, energetic, and affectionate, these pups inherited some of the best qualities from both of their parents. Afadors are also sometimes known as the Afghan Lab. You can find these mixed breed dogs in shelters and breed specific rescues, so remember to always adopt! Don’t shop if you’re looking to add an Afador to your home.", owner: "Rohan", breed: "Labrador", petAge: 1.4, walkTime: DayTimeData.dayTime1)
       
       static let pet8: Pet = Pet(name: "Bazel", photo: "pet2", description: "The Akita Chow is a mixed breed dog–a cross between the Akita and Chow Chow dog breeds. Large, independent, and loyal, these pups inherited some of the best traits from both of their parents.The Akita Chow can also be called Chakita. Despite their unfortunate status as a designer breed, you may find these mixed breed pups in shelters and breed specific rescues, so remember to adopt! Don’t shop!", owner: "Seffani Fernandez", breed: "Dashunt", petAge: 7, walkTime:DayTimeData.dayTime1)
       
       static let pet9: Pet = Pet(name: "Brownie", photo: "pet3", description: "A descendent of the English Foxhound, this hunting dog breed is known for his speed, endurance, and loud voice in the field. The American English Coonhound will bark and bay at home, too, making him a poor choice if you’ve got nearby neighbors. He needs lots of exercise.", owner: "Shawn", breed: "German Shephard", petAge: 4, walkTime: DayTimeData.dayTime1)
}


enum DayTimeData {
    static let dayTime1 = [
        DayTime(day: "Mon", startTime: "8:00 am", endTime: "9:00 pm"),
        DayTime(day: "Tue", startTime: "7:00 am", endTime: "10:00 pm"),
        DayTime(day: "Wed", startTime: "8:00 am", endTime: "11:00 pm"),
        DayTime(day: "Thursday", startTime: "9:00 am", endTime: "6:00 pm"),
        DayTime(day: "Friday", startTime: "12:00 am", endTime: "7:00 pm"),
        DayTime(day: "Saturday", startTime: "6:00 am", endTime: "8:00 pm"),
        DayTime(day: "Sunday", startTime: "8:00 am", endTime: "6:00 pm"),
    ]
}



