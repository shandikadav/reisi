//
//  OnboardWeightView.swift
//  reisi
//
//  Created by Shandika David Ardiansyah on 10/06/26.
//

import SwiftUI

struct OnboardWeightView: View {

    var viewModel: OnboardingViewModel
    @State private var localError: String?
    @Binding var currentStep: Int

    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            HStack {
                VStack(alignment: .leading) {
                    Text(" What's your weight?")
                        .font(.title)
                        .bold()
                        .padding(.bottom, 8)
                    Text("We use this to calculate your daily hydration target. ")
                        .font(.callout)
                }
                .padding(.vertical, 40)
                Spacer()
            }
            TextField(
                "Your Weight (kg)",
                value: Binding(
                    get: { viewModel.weight },
                    set: { viewModel.weight = $0 }
                ),
                format: .number
            )
            .keyboardType(.numberPad)
            .font(.title3)
            .foregroundStyle(Color.primary)
            .textFieldStyle(.plain)

            Button("Next") {
                if viewModel.weight == 0 {
                    localError = "Please input your weight"
                } else {
                    currentStep += 1
                }
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

#Preview {
    OnboardWeightView(
        viewModel: OnboardingViewModel(),
        currentStep: .constant(0)
    )
}
