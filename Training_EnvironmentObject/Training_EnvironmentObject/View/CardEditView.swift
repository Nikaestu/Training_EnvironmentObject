//
//  EditView.swift
//  Training_EnvironmentObject
//
//  Created by Dylan Le Hir on 18/11/2024.
//

import SwiftUI

struct CardEditView: View {
    @EnvironmentObject var cardViewModel: CardViewModel
    
    var body: some View {
        List {
            Section(header: Text("Edit section")) {
                Text(cardViewModel.user.name)
                
                NavigationLink {
                    MailEditView()
                } label: {
                    Text(cardViewModel.user.mail)
                        .foregroundStyle(.black)
                }
                
                NavigationLink {
                    AddressEditView()
                } label: {
                    Text(cardViewModel.user.address)
                        .foregroundStyle(.black)
                }
            }
        }
    }
}

#Preview {
    CardEditView()
}
