//
//  CurrentConditionsController.swift
//  weather
//
//  Created by Vefa Ozlu on 8/5/23.
//

import Foundation

@MainActor
class CurrentConditionsController: ObservableObject {
    @Published var currentConditions: CurrentConditions?
    
    private let client: CurrentConditionsClient
    
    func fetchCurrentConditions() async throws {
        self.currentConditions = try await client.currentConditions
    }
    
    init(client: CurrentConditionsClient = CurrentConditionsClient()) {
        self.client = client
    }
}
