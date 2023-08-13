//
//  WeatherDetail.swift
//  Weather
//
//  Created by Vefa Ozlu on 8/9/23.
//

import SwiftUI

struct WeatherDetail: View {
    let weather: WeatherInfo
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack {
                CurrentWeatherView(
                    weather: weather
                )
                HourlyForecastView(hourlyForecasts: weather.hourlyForecasts)
                DailyForecastsView(dailyForecasts: weather.dailyForecasts)
                ConditionCardsView(
                    currentConditions: weather.currentConditions,
                    dailyForecast: weather.dailyForecasts[0]
                )
            }
            .padding()
        }
    }
}
