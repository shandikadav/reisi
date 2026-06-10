//
//  OnboardingContainerView.swift
//  reisi
//
//  Created by Shandika David Ardiansyah on 10/06/26.
//

import SwiftUI

struct OnboardingContainerView: View {
    
    @State private var viewModel = OnboardingViewModel()
    @State private var currentStep: Int = 0
    
    var body: some View {
        VStack {
            TabView(selection: $currentStep) {
                OnboardNameView(viewModel: viewModel, currentStep: $currentStep)
                    .tag(0)
                OnboardWeightView(viewModel: viewModel, currentStep: $currentStep)
                    .tag(1)
                OnboardDailyActivityView(viewModel: viewModel, currentStep: $currentStep)
                    .tag(2)
            }
            .tabViewStyle(.page(indexDisplayMode: .never))
            .animation(.easeInOut, value: currentStep)
        }
    }
}

#Preview {
    OnboardingContainerView()
}
