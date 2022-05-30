//
//  HomeRow.swift
//  mojimoku
//
//  Created by MacBook Pro on 30/05/22.
//

import SwiftUI

struct HomeRow: View {
    var categoryName: String
    var items: [AnimeCharacter]
    var body: some View {
        Text(categoryName)
            .foregroundColor(.purple)
            .font(.headline)
            .bold()
            .padding(.leading, 10)
            .padding(.top, 5)
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .top, spacing: 0) {
                ForEach(items) { animeChar in
                    NavigationLink(
                        destination: AnimeCharsDetail(animeChar: animeChar)
                    )
                    {
                        HomeItem(animeChar: animeChar)
                    }
                    .scaleEffect(0.5)
                    .frame(minWidth: 150, maxWidth: 150, minHeight: 200, maxHeight: 200)
                }
            }
        }
        .frame(minHeight: 200, maxHeight: 200)
    }
}

struct HomeRow_Previews: PreviewProvider {
    static var animeChars = ModelData().animeChars
    static var previews: some View {
        HomeRow(
            categoryName: animeChars[0].category.rawValue,
            items: Array(animeChars.prefix(4))
        )
    }
}
