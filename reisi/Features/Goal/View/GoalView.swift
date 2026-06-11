//
//  GoalView.swift
//  reisi
//
//  Created by Shandika David Ardiansyah on 11/06/26.
//

import SwiftUI
import SwiftData

struct GoalView: View {
    
    @Environment(\.modelContext) private var modelContext
    @Query private var onboardings: [OnboardingModel]
    
    var body: some View {
        VStack {
            List {
                ForEach(onboardings) { onboarding in
                    Text(onboarding.name)
                    Text(onboarding.activity)
                    Text("\(onboarding.weight)")
                    Text("\(onboarding.age)")
                }
            }
        }
    }
}

#Preview {
    GoalView()
}
