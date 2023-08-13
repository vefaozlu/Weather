//
//  WeatherTests.swift
//  WeatherTests
//
//  Created by Vefa Ozlu on 8/6/23.
//

import XCTest
@testable import Weather

final class WeatherTests: XCTestCase {

    func testDecoder() throws {
        let decoder = JSONDecoder()
        
        _ = try decoder.decode([CurrentConditions].self, from: test_current_conditions_konya)
    }
    
    func testDecoderOneDayForecast() throws {
        let decoder = JSONDecoder()
        decoder.dateDecodingStrategy = .iso8601
        
        _ = try decoder.decode(DailyForecasts.self, from: test_daily_forecast_5days)
    }
    
    func testHourlyForecastModel() throws {
        let decoder = JSONDecoder()
        decoder.dateDecodingStrategy = .iso8601
        
        _ = try decoder.decode([HourlyForecast].self, from: test_hourly_forecast_12_hours)
    }
 }
