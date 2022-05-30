//
//  AnimeCharsList.swift
//  mojimoku
//
//  Created by MacBook Pro on 29/05/22.
//

import SwiftUI

struct AnimeCharsList: View {
    @EnvironmentObject var modelData: ModelData
    
    var filteredAnimeChars: [AnimeCharacter] { modelData.animeChars.filter { animeChar in
        (animeChar.isFavorite)
        }
    }
    
    var body: some View {
        NavigationView {
            List {
                ForEach(filteredAnimeChars) { animeChar in
                    NavigationLink(
                        destination: AnimeCharsDetail(animeChar: animeChar)
                    )
                    {
                        AnimeCharsRow(animeChar: animeChar)
                    }
                    .padding(.horizontal)
                    .scaleEffect(1.2)
                }
            }
            .navigationTitle("Favorite Characters")
        }
    }
}

struct AnimeCharsList_Previews: PreviewProvider {
    static var previews: some View {
        AnimeCharsList()
            .environmentObject(ModelData())
    }
}

