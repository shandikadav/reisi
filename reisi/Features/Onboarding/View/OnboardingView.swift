//
//  OnboardingView.swift
//  reisi
//
//  Created by Shandika David Ardiansyah on 09/06/26.
//

import SwiftUI

struct OnboardingView: View {
    
    @State private var viewModel = OnboardingViewModel()
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Group {
                switch viewModel.viewStep {
                case 0: nameView
                case 1: weightView
                case 2: activityView
                default: emptyView
                }
            }
            .frame(maxHeight: .infinity)
            .frame(maxWidth: .infinity)
            
            
        }
        .padding(20)
        .foregroundStyle(Color.background)
    }
    
    private var nameView: some View {
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
            TextField("Your Name", text: $viewModel.name)
                .font(.title3)
                .foregroundStyle(Color.primary)
                .textFieldStyle(.plain)
            
            Button("Next") {
                viewModel.viewStep += 1
            }
            .frame(width: .infinity)
            .buttonStyle(.borderedProminent)
            .padding(.top, 60)
            
            Spacer()
        }
    }
    
    private var weightView: some View {
        VStack(alignment: .leading, spacing: 20) {
            HStack {
                VStack(alignment: .leading){
                    Text("Hello,")
                        .font(.title)
                        .bold()
                        .foregroundStyle(Color.accent)
                    Text("Please Input Your Weight")
                        .font(.title3)
                        .bold()
                        .foregroundStyle(Color.accent)
                }
                Spacer()
            }
            TextField("Your Weight", text: $viewModel.name)
                .font(.title3)
                .foregroundStyle(Color.primary)
                .textFieldStyle(.plain)
            
            Button("Next") {
                viewModel.viewStep += 1
            }
            .frame(width: .infinity)
            .buttonStyle(.borderedProminent)
            .padding(.top, 60)
            Spacer()
        }
    }
}



private var activityView: some View {
    VStack(alignment: .leading, spacing: 20) {
        HStack {
            VStack(alignment: .leading){
                Text("Hello,")
                    .font(.title)
                    .bold()
                    .foregroundStyle(Color.accent)
                Text("Please Tell Your Name First")
                    .font(.title3)
                    .bold()
                    .foregroundStyle(Color.accent)
            }
            Spacer()
        }
        Spacer()
    }
}

private var emptyView: some View {
    VStack(alignment: .leading, spacing: 20) {
        HStack {
            VStack(alignment: .leading){
                Text("Hello,")
                    .font(.title)
                    .bold()
                    .foregroundStyle(Color.accent)
                Text("Please Tell Your Name First")
                    .font(.title3)
                    .bold()
                    .foregroundStyle(Color.accent)
            }
            Spacer()
        }
        
        Spacer()
    }
}

#Preview {
    OnboardingView()
}
