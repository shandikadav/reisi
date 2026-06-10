//
//  OnboardingViewModel.swift
//  reisi
//
//  Created by Shandika David Ardiansyah on 09/06/26.
//

import Foundation



@Observable
final class OnboardingViewModel {
    var viewStep: Int = 0
    var name: String = ""
    var weight: Int = 0
    var activity: String = ""

    enum Activity: String, CaseIterable, Identifiable {
        case sedentary = "Sedentary"
        case lightlyActive = "Lightly Active"
        case moderatelyActive = "Moderately Active"
        case veryActive = "Very Active"
        case extraActive = "Extra Active"
        
        var id: Self { self }
    }
    
    
    func saveData() {
        let result = OnboardingModel(
            name: name,
            weight: weight,
            activity: activity
        )
    }
}
