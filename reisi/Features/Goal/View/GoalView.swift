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
            ForEach(onboardings) { onboarding in
                HStack {
                    Text("Hello, \(onboarding.name)")
                        .font(.title3)
                }
                
                
            }
        }
    }
}

#Preview {
    GoalView()
}
