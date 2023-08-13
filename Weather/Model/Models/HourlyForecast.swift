//
//  HourlyForecast.swift
//  weather
//
//  Created by Vefa Ozlu on 8/4/23.
//

import Foundation

struct HFRawResponse: Decodable {
    let date: Date
    let icon: Int
    let iconPhrase: String
    let hasPrecipitation: Bool
    let isDaylight: Bool
    let temperature: Temperature
    let precipitationProbability: Int
    
    private enum CodingKeys: String, CodingKey {
        case date = "DateTime"
        case icon = "WeatherIcon"
        case iconPhrase = "IconPhrase"
        case hasPrecipitation = "HasPrecipitation"
        case isDaylight = "IsDaylight"
        case temperature = "Temperature"
        case precipitationProbability = "PrecipitationProbability"
    }
    
    struct Temperature: Decodable {
        let value: Double
        
        private enum CodingKeys: String, CodingKey {
            case value = "Value"
        }
    }
}

struct HourlyForecast: Identifiable {
    let id: Date
    let date: Date
    let icon: Int
    let phrase: String
    let hasPrecipitation: Bool
    let isDaylight: Bool
    let temperature: Double
    let precipitationProbability: Int
}

extension HourlyForecast: Decodable {
    
    init(from decoder: Decoder) throws {
        let rawResponse = try HFRawResponse(from: decoder)
        
        self.id = rawResponse.date
        self.date = rawResponse.date
        self.icon = rawResponse.icon
        self.phrase = rawResponse.iconPhrase
        self.hasPrecipitation = rawResponse.hasPrecipitation
        self.isDaylight = rawResponse.isDaylight
        self.temperature = rawResponse.temperature.value
        self.precipitationProbability = rawResponse.precipitationProbability
    }
}
