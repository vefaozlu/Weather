//
//  LocationStore.swift
//  Weather
//
//  Created by Vefa Ozlu on 8/10/23.
//

import Foundation

class LocationStore {
    private static func fileURL() throws -> URL {
        try FileManager.default.url(for: .documentDirectory,
                                    in: .userDomainMask,
                                    appropriateFor: nil,
                                    create: false)
        .appendingPathComponent("locations.data")
    }
    
    func load() async throws -> [Location] {
        let task = Task<[Location], Error> {
            let fileURL = try Self.fileURL()
            print("fileurl")
            guard let data = try? Data(contentsOf: fileURL) else {
                return []
            }
            let locations = try JSONDecoder().decode([Location].self, from: data)
            return locations
        }
        
        let locations = try await task.value
        
        return locations
    }
    
    func save(location: Location) async throws {
        let task = Task {
            let data = try JSONEncoder().encode(location)
            let outfile = try Self.fileURL()
            try data.write(to: outfile)
        }
        _ = try await task.value
    }
}
