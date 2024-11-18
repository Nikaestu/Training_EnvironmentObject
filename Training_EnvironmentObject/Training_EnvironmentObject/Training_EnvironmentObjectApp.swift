//
//  Training_EnvironmentObjectApp.swift
//  Training_EnvironmentObject
//
//  Created by Dylan Le Hir on 18/11/2024.
//

import SwiftUI

@main
struct Training_EnvironmentObjectApp: App {
    @StateObject var cardViewModel = CardViewModel()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(cardViewModel)
        }
    }
}

