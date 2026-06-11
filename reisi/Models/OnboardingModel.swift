//
//  OnboardingModel.swift
//  reisi
//
//  Created by Shandika David Ardiansyah on 09/06/26.
//

import Foundation
import SwiftData

@Model
final class OnboardingModel {
    var name: String
    var gender: String
    var weight: Int
    var age: Int
    var activity: String
    
    init(name: String, gender: String, weight: Int, age: Int, activity: String) {
        self.name = name
        self.gender = gender
        self.weight = weight
        self.age = age
        self.activity = activity
    }
}
