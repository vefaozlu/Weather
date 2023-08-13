//
//  CurrentConditionsClient.swift
//  weather
//
//  Created by Vefa Ozlu on 8/5/23.
//

import Foundation

actor CurrentConditionsClient {
    private let apiKey = "a9rNBEiMgK13BOgDOy4U0xuhaQVLLgu8"
    private let baseURLString = "https://dataservice.accuweather.com/currentconditions/v1/"
    
    private lazy var decoder: JSONDecoder = {
        let aDecoder = JSONDecoder()
        aDecoder.dateDecodingStrategy = .millisecondsSince1970
        return aDecoder
    }()

    private let downloader: any HTTPDataDownloader
    
    func currentConditionsFromKey(key: String) async throws -> CurrentConditions {
        //  let URL = URL(string: baseURLString + key + "?apikey=" + apiKey + "&details=true")!
        //  let data = try await downloader.httpData(from: URL)
        
        let currentConditions = try decoder.decode([CurrentConditions].self, from: test_current_conditions_konya)
        
        return currentConditions[0]
    }
    
    var currentConditions: CurrentConditions {
        get async throws {
            //  let data = try await downloader.httpData(from: feedURL)
            let currentConditions = try decoder.decode([CurrentConditions].self, from: test_current_conditions_konya)
            
            return currentConditions[0]
        }
    }
    
    init(downloader: any HTTPDataDownloader = URLSession.shared) {
        self.downloader = downloader
    }
}
