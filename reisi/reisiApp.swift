//
//  reisiApp.swift
//  reisi
//
//  Created by Shandika David Ardiansyah on 09/06/26.
//

import SwiftUI
import SwiftData

@main
struct reisiApp: App {

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: OnboardingModel.self)
    }
}
