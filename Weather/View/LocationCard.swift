//
//  LocationCard.swift
//  Weather
//
//  Created by Vefa Ozlu on 8/8/23.
//

import SwiftUI

struct LocationCard: View {
    let weather: WeatherInfo
    var body: some View {
        HStack {
            VStack {
                Text(weather.location.englishName)
                    .font(.title2)
                    .foregroundColor(.white)
                Spacer()
                Text(weather.hourlyForecasts[0].phrase)
                    .foregroundColor(.white)
            }
            .padding()
            Spacer()
            VStack {
                Text("\(String(format: "%2.0f", weather.currentConditions.temperature))°")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                Spacer()
                Text("H:\(String(format: "%2.0f", weather.dailyForecasts[0].maxTemperature)) L:\(String(format: "%2.0f", weather.dailyForecasts[0].minTemperature))")
                    .foregroundColor(.white)
            }
            .padding()
        }
        .background(Color(red: 0x00/255.0, green: 0xaa/255.0, blue: 0xff/255.0))
        .containerShape(RoundedRectangle(cornerRadius: 10.0))
        .padding(.horizontal)
    }
}
