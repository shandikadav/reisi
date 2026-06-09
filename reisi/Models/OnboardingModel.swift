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
    var weight: Int
    var activity: String
    
    init(name: String, weight: Int, activity: String) {
        self.name = name
        self.weight = weight
        self.activity = activity
    }
}
