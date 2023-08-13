//
//  CurrentWeather.swift
//  weather
//
//  Created by Vefa Ozlu on 8/5/23.
//

import SwiftUI

struct CurrentWeatherView: View {
    let weather: WeatherInfo
    
    var body: some View {
        VStack {
            Text(weather.location.englishName)
                .font(.title)
                .foregroundColor(.white)
            Text("\(String(format: "%2.0f", weather.currentConditions.temperature))°")
                .font(.custom("Avenir", size: 72, relativeTo: .title))
                .foregroundColor(.white)
                .fontWeight(.medium)
                .padding(3)
            
            Text(weather.currentConditions.weatherText)
                .font(.title3)
                .foregroundColor(.white)
            HStack {
                Text("L:\(String(format: "%2.0f", weather.dailyForecasts[0].minTemperature))°")
                    .font(.title3)
                    .foregroundColor(.white)
                Text("H:\(String(format: "%2.0f", weather.dailyForecasts[0].maxTemperature))°")
                    .font(.title3)
                    .foregroundColor(.white)
            }
        }
        .frame(height: 250)
        .padding()
    }
}
