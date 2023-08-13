//
//  DailyForecastsView.swift
//  weather
//
//  Created by Vefa Ozlu on 8/5/23.
//

import SwiftUI
import Foundation

struct DailyForecastsView: View {
    let dailyForecasts: [DailyForecast]
    
    func extractDayInfo(date: Date) -> String {
        lazy var dateFormatter: DateFormatter = {
            let dF = DateFormatter()
            dF.dateFormat = "E"
            return dF
        }()
        
        let day = dateFormatter.string(from: date)
        return day
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Text("5 Day Forecast")
                .frame(alignment: .center)
                .foregroundColor(.white)
                .font(.headline)
                .fontWeight(.bold)
                .padding(5)

            Divider()
            ForEach(dailyForecasts) {forecast in
                HStack {
                    Text("\(extractDayInfo(date: forecast.date))")
                        .frame(width: 90, alignment: .leading)
                        .foregroundColor(.white)
                        .padding([.leading])
                    Image(systemName: "sun.min")
                        .foregroundColor(.white)
                    Spacer()
                    Text("\(String(format: "%2.0f", forecast.minTemperature))°")
                        .frame(alignment: .center)
                        .foregroundColor(.white)
                        .padding(.horizontal)
                    Text("\(String(format: "%2.0f", forecast.maxTemperature))°")
                        .frame(alignment: .center)
                        .foregroundColor(.white)
                        .padding(.horizontal)
                }
                .padding(.vertical, 5)
            }
        }
        .background(Color(red: 0x00/255.0, green: 0xaa/255.0, blue: 0xff/255.0, opacity: 0.5))
        .containerShape(RoundedRectangle(cornerRadius: 5.0))

    }
}
