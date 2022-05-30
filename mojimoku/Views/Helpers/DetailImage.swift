//
//  DetailImage.swift
//  mojimoku
//
//  Created by MacBook Pro on 30/05/22.
//

import SwiftUI

struct DetailImage: View {
    @EnvironmentObject var modelData: ModelData
    var animeChar: AnimeCharacter
    
    var body: some View {
        VStack() {
            RoundedCorners(color: .purple, tl: 0, tr: 0, bl: 30, br: 30)
                .frame(maxWidth: .infinity, maxHeight: 250)
                
            CircleImage(image: animeChar.image)
                .frame(width: 150, height: 20)
                .scaleEffect(0.75)
                .padding(.bottom)
                .offset(y: -25)
        }
    }
}

struct DetailImage_Previews: PreviewProvider {
    static var previews: some View {
        DetailImage(animeChar: ModelData().animeChars[0])
            .environmentObject(ModelData())
    }
}
