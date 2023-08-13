//
//  DailyForecastClient.swift
//  weather
//
//  Created by Vefa Ozlu on 8/7/23.
//

import Foundation

actor DailyForecastClient {
    private let apiKey = "a9rNBEiMgK13BOgDOy4U0xuhaQVLLgu8"
    private let baseURLString = "https://dataservice.accuweather.com/forecasts/v1/daily/5day/"
    
    private lazy var decoder: JSONDecoder = {
        let aDecoder = JSONDecoder()
        aDecoder.dateDecodingStrategy = .iso8601
        return aDecoder
    }()
    
    private let downloader: any HTTPDataDownloader
    
    func dailyForecastsFromKey(key: String) async throws -> [DailyForecast] {
        //  let URL = URL(string: baseURLString + key + "?apikey=" + apiKey + "&details=true&metric=true")!
        //  let data = try await downloader.httpData(from: URL)
        
        let dailyForecasts = try decoder.decode(DailyForecasts.self, from: test_daily_forecast_5days)
        
        return dailyForecasts.dailyForecasts
    }
    
    var dailyForecasts: DailyForecasts {
        get async throws {
            //  let data = try await downloader.httpData(from: feedURL)
            
            let dailyForecasts = try decoder.decode(DailyForecasts.self, from: test_daily_forecast_5days)
            
            return dailyForecasts
        }
    }
    
    init(downloader: any HTTPDataDownloader = URLSession.shared) {
        self.downloader = downloader
    }
}
