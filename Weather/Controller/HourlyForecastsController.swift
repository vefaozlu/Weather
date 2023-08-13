//
//  HourlyForecastsController.swift
//  weather
//
//  Created by Vefa Ozlu on 8/7/23.
//

import Foundation

@MainActor
class HourlyForecastsController: ObservableObject {
    @Published var hourlyForecasts: [HourlyForecast] = []
    
    private let client: HourlyForecastsClient
    
    func fetchHourlyForecasts() async throws {
        let hourlyForecasts = try await client.hourlyForecasts
        self.hourlyForecasts = hourlyForecasts
    }
    
    init(client: HourlyForecastsClient = HourlyForecastsClient()) {
        self.client = client
    }
}
