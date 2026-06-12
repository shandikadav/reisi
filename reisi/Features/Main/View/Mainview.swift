//
//  Mainview.swift
//  reisi
//
//  Created by Shandika David Ardiansyah on 12/06/26.
//

import SwiftUI

struct Mainview: View {
    @State private var router = Router()
    var body: some View {
        TabView {
            NavigationStack(path: $router.home) {
                HomeView()
            }
            .navigationTitle(Text("Today"))
            .tabItem {
                Label("Today", systemImage: "drop.fill")
            }
            
            NavigationStack(path: $router.goal) {
                GoalView()
            }
            .navigationTitle(Text("Goals"))
            .tabItem {
                Label("Goals", systemImage: "target")
            }
            
            NavigationStack(path: $router.settings) {
                SettingsView()
            }
            .navigationTitle(Text("Settings"))
            .tabItem {
                Label("Settings", systemImage: "gearshape.fill")
            }
        }
    }
}

#Preview {
    Mainview()
}
