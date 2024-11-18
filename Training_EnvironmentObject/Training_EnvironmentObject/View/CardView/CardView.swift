//
//  CardView.swift
//  Training_EnvironmentObject
//
//  Created by Dylan Le Hir on 18/11/2024.
//

import SwiftUI

struct CardView: View {
    @EnvironmentObject var cardViewModel: CardViewModel
    
    var body: some View {
        NavigationStack {
            NavigationLink {
                CardEditView()
                } label: {
                List {
                    HStack {
                        Text("DLH")
                            .font(.headline)
                            .foregroundStyle(.white)
                            .frame(width: 46, height: 46)
                            .background(Color(.systemGray4))
                            .clipShape(Circle())
                        VStack(alignment: .leading) {
                            Text(cardViewModel.user.name)
                                .font(.headline)
                                .fontWeight(.semibold)
                                .foregroundStyle(.black)
                            Text(cardViewModel.user.mail)
                                .font(.footnote)
                                .padding(.leading, 2)
                                .tint(.gray)
                            Text(cardViewModel.user.address)
                                .font(.footnote)
                                .foregroundColor(.gray)
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    CardView(cardViewModel: .init())
}
