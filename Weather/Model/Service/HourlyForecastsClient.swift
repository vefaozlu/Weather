//
//  HourlyForecastsClient.swift
//  weather
//
//  Created by Vefa Ozlu on 8/7/23.
//

import Foundation

actor HourlyForecastsClient {
    private let apiKey = ""
    private let feedURL = URL(string: "https://dataservice.accuweather.com/forecasts/v1/hourly/12hour/318795?apikey=a9rNBEiMgK13BOgDOy4U0xuhaQVLLgu8%20&details=false&metric=true")!
    private let baseURLString = "https://dataservice.accuweather.com/forecasts/v1/hourly/12hour/"
    
    private lazy var decoder: JSONDecoder = {
        let aDecoder = JSONDecoder()
        aDecoder.dateDecodingStrategy = .iso8601
        return aDecoder
    }()
    
    private let downloader: any HTTPDataDownloader
    
    func hourlyForecastsFromKey(key: String) async throws -> [HourlyForecast] {
        //  let URL = URL(string: baseURLString + key + "?apikey=" + apiKey + "&details=false&metric=true")!
        //  let data = try await downloader.httpData(from: URL)
        
        let hourlyForecasts = try decoder.decode([HourlyForecast].self, from: test_hourly_forecast_12_hours)
        
        return hourlyForecasts
    }
    
    var hourlyForecasts: [HourlyForecast] {
        get async throws {
            //  let data = try await downloader.httpData(from: feedURL)
            
            let hourlyForecasts = try decoder.decode([HourlyForecast].self, from: test_hourly_forecast_12_hours)
            
            return hourlyForecasts
        }
    }
    
    init(downloader: any HTTPDataDownloader = URLSession.shared) {
        self.downloader = downloader
    }
}
