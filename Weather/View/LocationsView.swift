//
//  LocationsView.swift
//  Weather
//
//  Created by Vefa Ozlu on 8/9/23.
//

import SwiftUI

struct LocationsView: View {
    let weathers: [WeatherInfo]
    let collapseSheet: () -> Void
    let updateTabIndex: (_ index: Int) -> Void
    
    @State var searchString = ""
    
    var body: some View {
        VStack {
            HStack {
                TextField("Search a city", text: $searchString)
                    .background(.gray.opacity(0.5))
                    .containerShape(RoundedRectangle(cornerRadius: 5.0))
                    .padding()
                Button (action: {collapseSheet()}) {
                    Image(systemName: "xmark.circle")
                }
                .foregroundColor(.white)
                .padding()
            }
            ScrollView() {
                VStack {
                    ForEach(weathers.indices, id: \.self) { index in
                        Button(action: {
                            updateTabIndex(index)
                            collapseSheet()
                        }) {
                            LocationCard(weather: weathers[index])
                        }
                    }
                }
            }
        }
        .padding(.vertical)
    }
}
