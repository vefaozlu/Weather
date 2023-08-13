//
//  DailyForecastsController.swift
//  weather
//
//  Created by Vefa Ozlu on 8/7/23.
//

import Foundation

@MainActor
class DailyForecastsController: ObservableObject {
    @Published var dailyForecasts: [DailyForecast] = []
    
    private let client: DailyForecastClient
    
    func fetchDailyForecasts() async throws {
        let dailyForecasts = try await client.dailyForecasts
        self.dailyForecasts = dailyForecasts.dailyForecasts
    }
    
    init(client: DailyForecastClient = DailyForecastClient()) {
        self.client = client
    }
}
