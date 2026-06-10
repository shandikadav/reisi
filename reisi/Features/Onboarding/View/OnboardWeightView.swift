//
//  OnboardWeightView.swift
//  reisi
//
//  Created by Shandika David Ardiansyah on 10/06/26.
//

import SwiftUI

struct OnboardWeightView: View {
    
    var viewModel: OnboardingViewModel
    @Binding var currentStep: Int
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            HStack {
                VStack(alignment: .leading){
                    Text("Hello,")
                        .font(.title)
                        .bold()
                        .foregroundStyle(Color.accent)
                        .padding(.bottom, 4)
                    Text("Please Input Your Weight")
                        .font(.title3)
                        .bold()
                        .foregroundStyle(Color.accent)
                        .padding(.bottom, 40)
                }
                Spacer()
            }
            TextField("Your Weight (kg)", value: Binding(
                get: { viewModel.weight },
                set: { viewModel.weight = $0 }
            ), format: .number)
                .keyboardType(.numberPad)
                .font(.title3)
                .foregroundStyle(Color.primary)
                .textFieldStyle(.plain)
            
            
            Button("Next") {
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
//    OnboardWeightView(On)
//}
