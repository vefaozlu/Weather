//
//  ContentView.swift
//  weather
//
//  Created by Vefa Ozlu on 8/3/23.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var provider: Controller
    @State var loading: Bool = true
    @State var isPresentingLocations = false
    @State var tabIndex = 0
    
    func collapseSheet () {
        isPresentingLocations = false
    }
    
    func updateTabIndex (index: Int) {
        tabIndex = index
    }
    
    var body: some View {
        NavigationStack {
            ZStack {
                Rectangle()
                    .fill(Color(red: 0.4627, green: 0.8392, blue: 1.0))
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .ignoresSafeArea()
                
                TabView(selection: $tabIndex) {
                    switch loading {
                    case true:
                        ProgressView()
                    case false:
                        ForEach(provider.weathers.indices, id: \.self) { index in
                            WeatherDetail(weather: provider.weathers[index])
                                .tag(index)
                        }
                    }
                }
                .toolbar {
                    if(!loading) {
                        Button(action: {
                            isPresentingLocations = true
                        }) {
                            Image(systemName: "list.bullet")
                        }
                        .accessibilityLabel("Loaction List")
                    }
                }
            }
        }
        .sheet(isPresented: $isPresentingLocations) {
                LocationsView(weathers: provider.weathers,
                              collapseSheet: collapseSheet,
                              updateTabIndex: updateTabIndex)
                .background(Color.black)
        }
        .tabViewStyle(.page)
        .indexViewStyle(.page(backgroundDisplayMode: .always))
        .task {
            try? await provider.fetch()
            loading = false
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

