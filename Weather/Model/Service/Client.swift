//
//  LocationClient.swift
//  Weather
//
//  Created by Vefa Ozlu on 8/7/23.
//

import Foundation

actor Client {
    private let apiKey = "a9rNBEiMgK13BOgDOy4U0xuhaQVLLgu8"
    private let baseURLString = "https://dataservice.accuweather.com/locations/v1/"
    
    private lazy var decoder: JSONDecoder = {
        let aDecoder = JSONDecoder()
        aDecoder.dateDecodingStrategy = .iso8601
        return aDecoder
    }()
    
    private let downloader: any HTTPDataDownloader
    private let store: LocationStore
    
    func fetch() async throws -> [WeatherInfo] {
        //  let locations: [Location] = try await store.load()
        var weathers: [WeatherInfo] = []
        let keys: [String] = ["318158", "287430"]
        
        try await withThrowingTaskGroup(of: (String, WeatherInfo).self) { group in
            for key in keys {
                group.addTask {
                    let locationURL = URL(string: self.baseURLString + key + "?apikey=" + self.apiKey)!
                    let data = try await self.downloader.httpData(from: locationURL)
                    let location = try await self.decoder.decode(Location.self, from: data)

                    //  let cCURL = URL(string: self.baseURLString + "currentconditions/v1/" + location.id + "?apikey=" + self.apiKey + "&details=true")!
                    //  let cCData = try await self.downloader.httpData(from: cCURL)
                    let currentConditions = try await self.decoder.decode([CurrentConditions].self, from: test_current_conditions_konya)
                    
                    //let hFURL = URL(string: self.baseURLString + "forecasts/v1/hourly/12hour/" + location.id + "?apikey=" + self.apiKey + "&details=false&metric=true")!
                    //let hFData = try await self.downloader.httpData(from: hFURL)
                    let hourlyForecasts = try await self.decoder.decode([HourlyForecast].self, from: test_hourly_forecast_12_hours)
                    
                    //let dFURL = URL(string: self.baseURLString + "forecasts/v1/daily/5day/" + location.id + "?apikey=" + self.apiKey + "&details=true&metric=true")!
                    //let dFData = try await self.downloader.httpData(from: dFURL)
                    let dailyForecasts = try await self.decoder.decode(DailyForecasts.self, from: test_daily_forecast_5days)
                    
                    let weatherInfo = WeatherInfo(location: location,
                                                  currentConditions: currentConditions[0],
                                                  hourlyForecasts: hourlyForecasts,
                                                  dailyForecasts: dailyForecasts.dailyForecasts)
                    
                    return (location.id, weatherInfo)
                }
            }
            while let result = await group.nextResult() {
                switch result {
                case .failure(let error):
                    throw error
                case .success(let (_, weather)):
                    weathers.append(weather)
                }
            }
        }
        
        return weathers
    }
    
    func locationFromKey(key: String) async throws -> Location {
        let URL = URL(string: baseURLString + key + "?apikey=" + apiKey)!
        let data = try await downloader.httpData(from: URL)
        
        print("Location")
        
        let location = try decoder.decode(Location.self, from: data)
        
        //try await store.save(location: location)
        
        print("Location saved")
        
        return location
    }
    
    init(downloader: any HTTPDataDownloader = URLSession.shared, store: LocationStore = LocationStore()) {
        self.downloader = downloader
        self.store = store
    }
}
