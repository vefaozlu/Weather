//
//  weatherApp.swift
//  weather
//
//  Created by Vefa Ozlu on 8/3/23.
//

import SwiftUI

@main
struct weatherApp: App {
    @StateObject var controller = Controller()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(controller)
        }
    }
}
