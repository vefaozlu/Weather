//
//  WeatherError.swift
//  weather
//
//  Created by Vefa Ozlu on 8/5/23.
//

import Foundation

enum WeatherError: Error {
    case missingData
    case networkError
    case unexpectedError(error: Error)
}

extension WeatherError: LocalizedError {
    var errorDescription: String? {
        switch self {
        case .missingData:
            return NSLocalizedString("Missing data", comment: "")
        case .networkError:
            return NSLocalizedString("Error fetching weather data over the network.", comment: "")
        case .unexpectedError(let error):
            return NSLocalizedString("Received unexpected error. \(error.localizedDescription)", comment: "")

        }
    }
}
