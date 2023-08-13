//
//  HTTPDataDownloader.swift
//  weather
//
//  Created by Vefa Ozlu on 8/5/23.
//

import Foundation

let validStatus = 200...299
/// A protocol describing an HTTP Data Downloader.
protocol HTTPDataDownloader {
    func httpData(from: URL) async throws -> Data
}

extension URLSession: HTTPDataDownloader {
    func httpData(from url: URL) async throws -> Data {
        guard let (data, response) = try await self.data(from: url, delegate: nil) as? (Data, HTTPURLResponse),
              validStatus.contains(response.statusCode) else {
            throw WeatherError.networkError
        }
        return data
    }
}
