//
//  mojimokuApp.swift
//  mojimoku
//
//  Created by MacBook Pro on 29/05/22.
//

import SwiftUI

@main
struct mojimokuApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
