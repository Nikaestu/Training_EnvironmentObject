//
//  AddressEditView.swift
//  Training_EnvironmentObject
//
//  Created by Dylan Le Hir on 18/11/2024.
//

import SwiftUI

struct AddressEditView: View {
    @State private var address: String = ""
    @EnvironmentObject var cardViewModel: CardViewModel
    var body: some View {
        TextField("Enter your address", text: $address)
        Button("Send") {
            cardViewModel.user.address = address
        }
    }
}

#Preview {
    AddressEditView()
}
