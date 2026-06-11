//
//  OnboardAgeView.swift
//  reisi
//
//  Created by Shandika David Ardiansyah on 11/06/26.
//

import SwiftUI

struct OnboardAgeView: View {
    var viewModel: OnboardingViewModel
    @Binding var currentStep: Int
    @State private var localError: String?

    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            HStack {
                VStack(alignment: .leading) {
                    Text("How old are you?")
                        .font(.title)
                        .bold()
                        .padding(.bottom, 8)
                    Text(" We use this to personalize your experience. ")
                        .font(.callout)
                }
                .padding(.vertical, 40)
                Spacer()
            }

            Picker(
                selection: Binding(
                    get: { viewModel.age },
                    set: { viewModel.age = $0 }
                ),
                label: EmptyView()
            ) {
                ForEach(12...100, id: \.self) { age in
                    Text("\(age)")
                }
            }
            .pickerStyle(.wheel)

            if let error = localError {
                Text(error)
            }

            Button("Next") {
                if viewModel.age == 0 {
                    localError = "Age is required!"
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
    OnboardAgeView(viewModel: OnboardingViewModel(), currentStep: .constant(1))
}
