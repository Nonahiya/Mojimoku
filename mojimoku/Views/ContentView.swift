//
//  ContentView.swift
//  mojimoku
//
//  Created by MacBook Pro on 29/05/22.
//

import SwiftUI

struct ContentView: View {
    @State private var selection: Tab = .explore
    
    enum Tab {
        case explore
        case list
    }
    var body: some View {
        TabView(selection: $selection) {
            HomeMain()
                .tabItem {
                    Label("Explore", systemImage: "globe")
                }
                .tag(Tab.explore)
            
            AnimeCharsList()
                .tabItem {
                    Label("List", systemImage: "list.bullet")
                }
                .tag(Tab.list)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(ModelData())
    }
}
