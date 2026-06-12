//
//  HomeView.swift
//  reisi
//
//  Created by Shandika David Ardiansyah on 12/06/26.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack {
            HStack {
                Text("Hello, David")
                    .font(.title3)
                    .bold()
            }
            
            Spacer()
            
            CircularChartComponentView(progress: 0.5)
            
            Spacer()
            
            HStack {
                DrinkButtonComponent(dose: 250) {
                    
                }
                Spacer()
                DrinkButtonComponent(dose: 500) {
                    
                }
                Spacer()
                DrinkButtonComponent(dose: 750) {
                    
                }
            }
            .padding(.horizontal, 40)
        }
        .padding(40)
    }
}

#Preview {
    HomeView()
}
