//
//  DailyForecast.swift
//  weather
//
//  Created by Vefa Ozlu on 8/4/23.
//

import Foundation

struct Root: Decodable {
    let forecasts: [DFRawResponse]
    
    private enum CodingKeys: String, CodingKey {
        case forecasts = "DailyForecasts"
    }
}

struct DFRawResponse: Decodable {
    let date: Date
    let epochDate: Int
    let sun: Sun
    let temperature: Temperature
    let realFeelTemperature: Temperature
    let day: Conditions
    let night: Conditions
    
    private enum CodingKeys: String, CodingKey {
        case date = "Date"
        case epochDate = "EpochDate"
        case sun = "Sun"
        case temperature = "Temperature"
        case realFeelTemperature = "RealFeelTemperature"
        case day = "Day"
        case night = "Night"
    }
    
    struct Sun: Decodable {
        let rise: Date
        let set: Date
        
        private enum CodingKeys: String, CodingKey {
            case rise = "Rise"
            case set = "Set"
        }
    }
    
    struct Temperature: Decodable {
        let min: TemperatureObject
        let max: TemperatureObject
        
        private enum CodingKeys: String, CodingKey {
            case min = "Minimum"
            case max = "Maximum"
        }
    }
    
    struct TemperatureObject: Decodable {
        let value: Double
        let phrase: String?
        
        private enum CodingKeys: String, CodingKey {
            case value = "Value"
            case phrase = "Phrase"
        }
    }
    
    struct Conditions: Decodable {
        let icon: Int
        let iconPhrase: String
        let shortPhrase: String
        let precipitationProbability: Int
        let thunderstormProbability: Int
        let rainProbability: Int
        let snowProbability: Int
        let iceProbability: Int
        let wind: Wind
        
        private enum CodingKeys: String, CodingKey {
            case icon = "Icon"
            case iconPhrase = "IconPhrase"
            case shortPhrase = "ShortPhrase"
            case precipitationProbability = "PrecipitationProbability"
            case thunderstormProbability = "ThunderstormProbability"
            case rainProbability = "RainProbability"
            case snowProbability = "SnowProbability"
            case iceProbability = "IceProbability"
            case wind = "Wind"
        }
    }
    
    struct Wind: Decodable {
        let speed: Speed
        let direction: Direction
        
        private enum CodingKeys: String, CodingKey {
            case speed = "Speed"
            case direction = "Direction"
        }
    }
    
    struct Speed: Decodable {
        let value: Double
        
        private enum CodingKeys: String, CodingKey {
            case value = "Value"
        }
    }
    
    struct Direction: Decodable {
        let degree: Int
        
        private enum CodingKeys: String, CodingKey {
            case degree = "Degrees"
        }
    }
}

struct DailyForecast: Identifiable {
    let id: Date
    let date: Date
    let sunRise: Date
    let sunSet: Date
    let minTemperature: Double
    let maxTemperature: Double
    let minRealFeelTemperature: Double
    let minRealFeelTemperaturePhrase: String
    let maxRealFeelTemperature: Double
    let maxRealFeelTemperaturePhrase: String
    let dayConditions: Conditions
    let nightConditions: Conditions
}

struct Conditions {
    let icon: Int
    let iconPhrase: String
    let shortPhrase: String
    let precipitationProbability: Int
    let thunderstormProbability: Int
    let rainProbability: Int
    let snowProbability: Int
    let iceProbability: Int
    let windSpeed: Double
    let windDirection: Int
}

struct DailyForecasts: Decodable {
    private(set) var dailyForecasts: [DailyForecast] = []
    
    init(from decoder: Decoder) throws {
        let root = try Root(from: decoder)
        
        for rawResponse in root.forecasts {
            let dayConditions = Conditions(
                icon: rawResponse.day.icon,
                iconPhrase: rawResponse.day.iconPhrase,
                shortPhrase: rawResponse.day.shortPhrase,
                precipitationProbability: rawResponse.day.precipitationProbability,
                thunderstormProbability: rawResponse.day.thunderstormProbability,
                rainProbability: rawResponse.day.rainProbability,
                snowProbability: rawResponse.day.snowProbability,
                iceProbability: rawResponse.day.iceProbability,
                windSpeed: rawResponse.day.wind.speed.value,
                windDirection: rawResponse.day.wind.direction.degree
            )
            
            let nightConditions = Conditions(
                icon: rawResponse.night.icon,
                iconPhrase: rawResponse.night.iconPhrase,
                shortPhrase: rawResponse.night.shortPhrase,
                precipitationProbability: rawResponse.night.precipitationProbability,
                thunderstormProbability: rawResponse.night.thunderstormProbability,
                rainProbability: rawResponse.night.rainProbability,
                snowProbability: rawResponse.night.snowProbability,
                iceProbability: rawResponse.night.iceProbability,
                windSpeed: rawResponse.night.wind.speed.value,
                windDirection: rawResponse.night.wind.direction.degree
            )
            
            
            let dF = DailyForecast(
                id: rawResponse.date,
                date: rawResponse.date,
                sunRise: rawResponse.sun.rise,
                sunSet: rawResponse.sun.set,
                minTemperature: rawResponse.temperature.min.value,
                maxTemperature: rawResponse.temperature.max.value,
                minRealFeelTemperature: rawResponse.realFeelTemperature.min.value,
                minRealFeelTemperaturePhrase: rawResponse.realFeelTemperature.min.phrase!,
                maxRealFeelTemperature: rawResponse.realFeelTemperature.max.value,
                maxRealFeelTemperaturePhrase: rawResponse.realFeelTemperature.max.phrase!,
                dayConditions: dayConditions,
                nightConditions: nightConditions
            )
            
            self.dailyForecasts.append(dF)
        }
    }
}

