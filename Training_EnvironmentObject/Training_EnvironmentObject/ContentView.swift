//
//  ContentView.swift
//  Training_EnvironmentObject
//
//  Created by Dylan Le Hir on 18/11/2024.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var cardViewModel: CardViewModel
    
    var body: some View {
        CardView()
    }
}

#Preview {
    ContentView()
}
