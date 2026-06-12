//
//  HomeComponent.swift
//  reisi
//
//  Created by Shandika David Ardiansyah on 12/06/26.
//

import SwiftUI

struct CircularChartComponentView: View {
    var progress: Double
    var body: some View {
        ZStack {
            Circle().stroke(Color.gray.opacity(0.3), lineWidth: 10)
            Circle()
                .trim(from: 0, to: progress)
                .stroke(
                    Color.blue,
                    style: StrokeStyle(lineWidth: 20, lineCap: .round)
                )
                .rotationEffect(.degrees(-90))
                .animation(.linear, value: progress)
            VStack{
                Text("0.5L")
                    .font(.largeTitle)
                Text("left")
                    .font(.caption)
            }
        }
        .padding(20)
    }
}

struct DrinkButtonComponent: View {
    var dose: Int
    let action: () -> Void
    var body: some View {
        Button(action: action) {
            VStack {
                Image(systemName: "drop.fill")
                    .padding(20)
                    .font(.system(size: 21))
                    .foregroundColor(.blue)
                    .background(.gray.opacity(0.3))
                    .clipShape(.circle)
                Text("\(dose)ml")
                    .font(.callout)
                    .bold()
                    .foregroundStyle(.gray)
            }
        }
    }
}

#Preview {
    CircularChartComponentView(progress: 0.1)
    DrinkButtonComponent(dose: 500, action: {})
}
