//
//  WeatherInfo.swift
//  Weather
//
//  Created by Vefa Ozlu on 8/10/23.
//

import Foundation

struct WeatherInfo {
    let location: Location
    let currentConditions: CurrentConditions
    let hourlyForecasts: [HourlyForecast]
    let dailyForecasts: [DailyForecast]
    
    init(
        location: Location,
        currentConditions: CurrentConditions,
        hourlyForecasts: [HourlyForecast],
        dailyForecasts: [DailyForecast]
    ) {
        self.location = location
        self.currentConditions = currentConditions
        self.hourlyForecasts = hourlyForecasts
        self.dailyForecasts = dailyForecasts
    }
}
