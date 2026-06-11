//
//  OnboardingViewModel.swift
//  reisi
//
//  Created by Shandika David Ardiansyah on 09/06/26.
//

import Foundation
import SwiftData

@Observable
final class OnboardingViewModel {
    var name: String = ""
    var gender: String = ""
    var weight: Int = 0
    var age: Int = 0
    var activity: String = ""
    var selectedAcitivity: Activities = .sedentary

    enum Activities: String, CaseIterable, Identifiable {
        case sedentary = "Sedentary"
        case lightlyActive = "Lightly Active"
        case moderatelyActive = "Moderately Active"
        case highlyActive = "Highly Active"

        var id: Self { self }
    }

    func saveData(context: ModelContext) {
        let onboardingData = OnboardingModel(
            name: name,
            gender: gender,
            weight: weight,
            age: age,
            activity: activity
        )
        context.insert(onboardingData)
    }
}
