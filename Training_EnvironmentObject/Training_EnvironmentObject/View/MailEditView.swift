//
//  MailEditView.swift
//  Training_EnvironmentObject
//
//  Created by Dylan Le Hir on 18/11/2024.
//

import SwiftUI

struct MailEditView: View {
    @State private var mail: String = ""
    @EnvironmentObject var cardViewModel: CardViewModel
    
    var body: some View {
        VStack {
            TextField("Enter your email", text: $mail)
            Button("Send") {
                cardViewModel.user.mail = mail
            }
        }
    }
}

#Preview {
    MailEditView()
}

