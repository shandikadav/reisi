//
//  ContentView.swift
//  reisi
//
//  Created by Shandika David Ardiansyah on 09/06/26.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Query private var onboardings: [OnboardingModel]

    var body: some View {
        if onboardings.isEmpty {
            OnboardingContainerView()
        } else {
            GoalView()
        }
    }

}

#Preview {
    ContentView()
}
