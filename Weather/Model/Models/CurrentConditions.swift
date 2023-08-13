//
//  CurrentCondition.swift
//  weather
//
//  Created by Vefa Ozlu on 8/5/23.
//

import Foundation

struct RawResponse: Decodable {
    let weatherText: String
    let weatherIcon: Int
    let isDayTime: Bool
    let temperature: Temperature
    let realFeelTemperature: Temperature
    let relativeHumidity: Int
    let wind: Wind
    let uVIndex: Int
    let uVIndexText: String
    let visibility: Visibility
    
    private enum CodingKeys: String, CodingKey {
        case weatherText = "WeatherText"
        case weatherIcon = "WeatherIcon"
        case isDayTime = "IsDayTime"
        case temperature = "Temperature"
        case realFeelTemperature = "RealFeelTemperature"
        case relativeHumidity = "RelativeHumidity"
        case wind = "Wind"
        case uVIndex = "UVIndex"
        case uVIndexText = "UVIndexText"
        case visibility = "Visibility"
    }
    
    struct Temperature: Decodable {
        let metric: Metric
        
        private enum CodingKeys: String, CodingKey {
            case metric = "Metric"
        }
    }
    
    struct Wind: Decodable {
        let direction: Direction
        let speed: Speed
        
        private enum CodingKeys: String, CodingKey {
            case direction = "Direction"
            case speed = "Speed"
        }
        
        struct Speed: Decodable {
            let metric: Metric
            
            private enum CodingKeys: String, CodingKey {
                case metric = "Metric"
            }
        }
        
        struct Direction: Decodable {
            let degrees: Int
            
            private enum CodingKeys: String, CodingKey {
                case degrees = "Degrees"
            }
        }
        
    }
    
    struct Visibility: Decodable {
        let metric: Metric
        
        private enum CodingKeys: String, CodingKey {
            case metric = "Metric"
        }
    }
    
    struct Metric: Decodable {
        let val: Double
        let phrase: String?
        
        private enum CodingKeys: String, CodingKey {
            case val = "Value"
            case phrase = "Phrase"
        }
    }
}

struct CurrentConditions: Decodable {
    let weatherText: String
    let weatherIcon: Int
    let isDayTime: Bool
    let temperature: Double
    let realFeelTemperature: Double
    let realFeelTemperaturePhrase: String
    let relativeHumidity: Int
    let windDirection: Int
    let windSpeed: Double
    let uVIndex: Int
    let uVIndexText: String
    let visibility: Double
    
    init(from decoder: Decoder) throws {
        let rawResponse = try RawResponse(from: decoder)
        
        guard let weatherText = Optional(rawResponse.weatherText),
              let weatherIcon = Optional(rawResponse.weatherIcon),
              let isDayTime = Optional(rawResponse.isDayTime),
              let temperature = Optional(rawResponse.temperature.metric.val),
              let realFeelTemperature = Optional(rawResponse.realFeelTemperature.metric.val),
              let realFeelTemperaturePhrase = Optional(rawResponse.realFeelTemperature.metric.phrase),
              let relativeHumidity = Optional(rawResponse.relativeHumidity),
              let windSpeed = Optional(rawResponse.wind.speed.metric.val),
              let windDirection = Optional(rawResponse.wind.direction.degrees),
              let uVIndex = Optional(rawResponse.uVIndex),
              let uVIndexText = Optional(rawResponse.uVIndexText),
              let visibility = Optional(rawResponse.visibility.metric.val)
        else {
            throw WeatherError.missingData
        }
        
        self.weatherText = weatherText
        self.weatherIcon = weatherIcon
        self.isDayTime = isDayTime
        self.temperature = temperature
        self.realFeelTemperature = realFeelTemperature
        self.realFeelTemperaturePhrase = realFeelTemperaturePhrase!
        self.relativeHumidity = relativeHumidity
        self.windSpeed = windSpeed
        self.windDirection = windDirection
        self.uVIndex = uVIndex
        self.uVIndexText = uVIndexText
        self.visibility = visibility
    }
}
