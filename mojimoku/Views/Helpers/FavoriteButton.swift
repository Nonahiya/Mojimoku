//
//  FavoriteButton.swift
//  mojimoku
//
//  Created by MacBook Pro on 29/05/22.
//

import SwiftUI

struct FavoriteButton: View {
    @Binding var isSet: Bool
    var body: some View {
        Button {
            isSet.toggle()
        } label: {
            Label("Toggle Favorite", systemImage: isSet ? "heart.fill" : "heart.fill")
                .labelStyle(IconOnlyLabelStyle())
                .foregroundColor(isSet ? .purple : .gray)
                .frame(width: 50, height: 50)
                .scaleEffect(3)
        }
    }
}

struct FavoriteButton_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteButton(isSet: .constant(true))
    }
}
