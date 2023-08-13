//
//  12HourForecast.swift
//  weather
//
//  Created by Vefa Ozlu on 8/5/23.
//

import SwiftUI

struct HourlyForecastView: View {
    let hourlyForecasts: [HourlyForecast]
    
    func extractHourInfo(date: Date) -> String {
        lazy var dateFormatter: DateFormatter = {
            let dF = DateFormatter()
            dF.dateFormat = "HH:mm"
            return dF
        }()
        
        let hour = dateFormatter.string(from: date)
        return hour
    }

    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Text("12 Hour Forecast")
                .frame(alignment: .center)
                .foregroundColor(.white)
                .font(.headline)
                .fontWeight(.bold)
                .padding(5)
            Divider()
                .foregroundColor(.white).opacity(0.5)
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHStack {
                    ForEach(hourlyForecasts) { forecast in
                        VStack {
                            Text("\(extractHourInfo(date: forecast.date))")
                                .foregroundColor(.white)
                                .fontWeight(.bold)
                            Image(systemName: forecast.isDaylight ? "sun.min" : "moon")
                                .padding(.vertical, 1)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                            Text("\(String(format: "%2.0f", forecast.temperature))°")
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                        }
                        .frame(width: 55)
                    }
                }
            }
        }
        .frame(height: 140)
        .background(Color(red: 0x00/255.0, green: 0xaa/255.0, blue: 0xff/255.0, opacity: 0.5))
        .containerShape(RoundedRectangle(cornerRadius: 5.0))
    }
}
