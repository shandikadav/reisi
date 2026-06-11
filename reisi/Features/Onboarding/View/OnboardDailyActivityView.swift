//
//  OnboardDailyActivityView.swift
//  reisi
//
//  Created by Shandika David Ardiansyah on 10/06/26.
//

import SwiftUI
import SwiftData

struct OnboardDailyActivityView: View {

    var viewModel: OnboardingViewModel
    @Binding var currentStep: Int
    @State private var localError: String?
    @Environment(\.modelContext) private var modelContext

    var body: some View {
        @Bindable var bindableVM = viewModel
        
        VStack(alignment: .leading, spacing: 20) {
            HStack {
                VStack(alignment: .leading) {
                    Text("What's your activity level? ")
                        .font(.title)
                        .bold()
                        .padding(.bottom, 8)
                    Text("This helps us calculate your daily hydration target based on metabolic rate.")
                        .font(.callout)
                }
                .padding(.vertical, 40)
                Spacer()
            }
            Picker("Activity", selection: $bindableVM.selectedAcitivity) {
                ForEach(OnboardingViewModel.Activities.allCases) { activity in
                    Text(activity.rawValue.capitalized)
                        .tag(activity)
                }
            }
            .pickerStyle(.inline)

            Button("Submit") {
                viewModel.saveData(context: modelContext)
                
                try? modelContext.save()
                
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
    OnboardDailyActivityView(viewModel: OnboardingViewModel(), currentStep: .constant(0))
}
