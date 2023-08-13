//
//  LocationController.swift
//  Weather
//
//  Created by Vefa Ozlu on 8/7/23.
//

import SwiftUI

@MainActor
class Controller: ObservableObject {
    @Published var weathers: [WeatherInfo] = []
    
    private let client: Client
    
    func fetch() async throws {
        let weathers = try await client.fetch()
        self.weathers = weathers
    }
    
    func addLocation(key: String = "318158") async throws {
        _ = try await client.locationFromKey(key: key)
    }
    
    init(client: Client = Client()) {
        self.client = client
    }
}
