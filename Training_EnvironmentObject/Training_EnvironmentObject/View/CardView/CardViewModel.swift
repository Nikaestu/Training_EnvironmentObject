//
//  CardViewModel.swift
//  Training_EnvironmentObject
//
//  Created by Dylan Le Hir on 18/11/2024.
//

import Foundation

class CardViewModel: ObservableObject {
    @Published var user: User
    
    init() {
        self.user = User(
            name: "Dylan Le Hir",
            mail: "dylan@lehir.com",
            address: "8 rue des flans patissiers"
        )
    }
}
