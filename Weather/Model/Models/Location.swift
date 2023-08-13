//
//  Location.swift
//  Weather
//
//  Created by Vefa Ozlu on 8/7/23.
//

import Foundation

struct Location: Identifiable {
    let id: String
    let localizedName: String
    let englishName: String
    let countryId: String
    let countryEnglishName: String
}

extension Location: Codable {
    init(from decoder: Decoder) throws {
        let rawResponse = try LocationRawResponse(from: decoder)
        
        guard let id = Optional(rawResponse.key),
              let localizedName = Optional(rawResponse.localizedName),
              let englishName = Optional(rawResponse.englishName),
              let countryId = Optional(rawResponse.country.id),
              let countryEnglishName = Optional(rawResponse.country.englishName) else {
            throw WeatherError.missingData
        }
        
        self.id = id
        self.localizedName = localizedName
        self.englishName = englishName
        self.countryId = countryId
        self.countryEnglishName = countryEnglishName
    }
    
    init(
        id: String,
        localizedName: String,
        englishName: String,
        countryid: String,
        countryEnglishName: String
    ) {
        self.id = id
        self.localizedName = localizedName
        self.englishName = englishName
        self.countryId = countryid
        self.countryEnglishName = countryEnglishName
    }
}

extension Location: Equatable {
    static func == (lhs: Location, rhs: Location) -> Bool {
        return lhs.id == rhs.id &&
        lhs.localizedName == rhs.localizedName &&
        lhs.englishName == rhs.englishName &&
        lhs.countryId == rhs.countryId &&
        lhs.countryEnglishName == rhs.countryEnglishName
    }
}

struct LocationRawResponse: Decodable {
    let key: String
    let type: String
    let localizedName: String
    let englishName: String
    let country: Country
    
    private enum CodingKeys: String, CodingKey {
        case key = "Key"
        case type = "Type"
        case localizedName = "LocalizedName"
        case englishName = "EnglishName"
        case country = "Country"
    }
    
    struct Country: Decodable {
        let id: String
        let englishName: String
        
        private enum CodingKeys: String, CodingKey {
            case id = "ID"
            case englishName = "EnglishName"
        }
    }
}
