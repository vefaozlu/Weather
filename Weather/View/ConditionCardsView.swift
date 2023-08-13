//
//  ConditionCardsView.swift
//  Weather
//
//  Created by Vefa Ozlu on 8/7/23.
//

import SwiftUI

struct ConditionCardsView: View {
    let currentConditions: CurrentConditions
    let dailyForecast: DailyForecast
    
    var body: some View {
        Grid {
            GridRow {
                ConditionCard(
                    title: "UVIndex",
                    bodyText: "\(currentConditions.uVIndex)",
                    subtitle: currentConditions.uVIndexText
                )
                ConditionCard(
                    title: "Feel",
                    bodyText: "\(Int(currentConditions.realFeelTemperature))°",
                    subtitle: currentConditions.realFeelTemperaturePhrase
                )
            }
            GridRow {
                ConditionCard(
                    title: "Humidity",
                    bodyText: "\(currentConditions.relativeHumidity)",
                    subtitle: ""
                )
                ConditionCard(
                    title: "Visibility",
                    bodyText: "\(currentConditions.visibility) Km",
                    subtitle: ""
                )
            }
            GridRow {
                ConditionCard(
                    title: "Wind",
                    bodyText: "\(currentConditions.windDirection)",
                    subtitle: "\(currentConditions.windSpeed) Km/h"
                )
                ConditionCard(
                    title: "Wind",
                    bodyText: "5 Km/h",
                    subtitle: "From north to east"
                )
            }
        }
        
    }
}
