//
//  OnboardNameView.swift
//  reisi
//
//  Created by Shandika David Ardiansyah on 10/06/26.
//

import SwiftUI

struct OnboardNameView: View {
    
    var viewModel: OnboardingViewModel
    @Binding var currentStep: Int
    @State private var localError: String?
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            HStack {
                VStack(alignment: .leading){
                    Text("Hello,")
                        .font(.title)
                        .bold()
                        .foregroundStyle(Color.accent)
                        .padding(.bottom, 4)
                    Text("Please Tell Your Name First")
                        .font(.title3)
                        .bold()
                        .foregroundStyle(Color.accent)
                        .padding(.bottom, 40)
                }
                Spacer()
            }
            TextField("Your Name", text: Binding(
                get: { viewModel.name },
                set: { viewModel.name = $0 }
            ))
                .font(.title3)
                .foregroundStyle(Color.primary)
                .textFieldStyle(.plain)
            
            
            Button("Next") {
                if viewModel.name.isEmpty {
                    localError = "Name is required"
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

//#Preview {
//    OnboardNameView(viewModel: OnboardingViewModel(), currentStep: )
//}
