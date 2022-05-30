//
//  MainHome.swift
//  mojimoku
//
//  Created by MacBook Pro on 30/05/22.
//

import SwiftUI

struct HomeMain: View {
    @EnvironmentObject var modelData: ModelData
    
    var body: some View {
        NavigationView {
            List {
                ForEach(modelData.categories.keys.sorted(), id: \.self) { key in
                        HomeRow(categoryName: key, items: modelData.categories[key]!)
                }
                .listRowInsets(EdgeInsets())
            }
            .listStyle(InsetListStyle())
            .navigationTitle("Explore")
        }
    }
}

struct HomeMain_Previews: PreviewProvider {
    static var previews: some View {
        HomeMain()
            .environmentObject(ModelData())
    }
}
