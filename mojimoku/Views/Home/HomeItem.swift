//
//  HomeItem.swift
//  mojimoku
//
//  Created by MacBook Pro on 30/05/22.
//

import SwiftUI

struct HomeItem: View {
    var animeChar: AnimeCharacter
    var body: some View {
        VStack(alignment: .center) {
            RoundedCorners(color: .yellow, tl: 0, tr: 0, bl: 0.5, br: 0.5)
                .frame(maxWidth: 4, maxHeight: 4)
                .scaleEffect(60)
                .offset(y:235)
            CircleImage(image: animeChar.image)
            
            VStack(alignment: .center) {
                Text(animeChar.name)
                    .foregroundColor(.primary)
                    .bold()
                    .font(.title)
                    .multilineTextAlignment(.center)
                    .truncationMode(/*@START_MENU_TOKEN@*/.tail/*@END_MENU_TOKEN@*/)
                    .lineLimit(2)
                    .frame(maxWidth:200, minHeight:75, maxHeight:75, alignment: .init(horizontal: .center, vertical: .center))
                    .fixedSize(horizontal: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/, vertical: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
                Text(animeChar.origin)
                    .foregroundColor(.purple)
                    .font(.title2)
                    .truncationMode(/*@START_MENU_TOKEN@*/.tail/*@END_MENU_TOKEN@*/)
                    .lineLimit(1)
                    .frame(maxWidth:200, minHeight:50, maxHeight:50, alignment: .init(horizontal: .center, vertical: .center))
                    .fixedSize(horizontal: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/, vertical: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
                
                Spacer()
            }
        }
        .frame(maxWidth:270, maxHeight:370, alignment: .init(horizontal: .center, vertical: .bottom))
    }
}

struct HomeItem_Previews: PreviewProvider {
    static var previews: some View {
        HomeItem(animeChar: ModelData().animeChars[0])
    }
}
