//
//  OnboardDailyActivityView.swift
//  reisi
//
//  Created by Shandika David Ardiansyah on 10/06/26.
//

import SwiftUI

struct OnboardDailyActivityView: View {
    
    var viewModel: OnboardingViewModel
    @Binding var currentStep: Int
    @State private var selectedActivity: OnboardingViewModel.Activity = .sedentary
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            HStack {
                VStack(alignment: .leading){
                    Text("Hello,")
                        .font(.title)
                        .bold()
                        .foregroundStyle(Color.accent)
                        .padding(.bottom, 4)
                    Text("How Intense is Your Daily Activity?")
                        .font(.title3)
                        .bold()
                        .foregroundStyle(Color.accent)
                        .padding(.bottom, 40)
                }
                Spacer()
            }
            Picker("Activity", selection: $selectedActivity) {
                ForEach(OnboardingViewModel.Activity.allCases) { activity in
                    Text(activity.rawValue.capitalized)
                }
            }
            .pickerStyle(.inline)
            
            
            Button("Submit") {
                currentStep += 1
            }
            .controlSize(ControlSize.large)
            .buttonSizing(ButtonSizing.flexible)
            .buttonStyle(.borderedProminent)
            .padding(.top, 60)
            
            Spacer()
        }
        .padding(20)
    }
}

//#Preview {
//    OnboardDailyActivityView()
//}
