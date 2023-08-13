//
//  ConditionCard.swift
//  weather
//
//  Created by Vefa Ozlu on 8/5/23.
//

import SwiftUI

struct ConditionCard: View {
    let title: String
    let bodyText: String
    let subtitle: String
    
    var body: some View {
        VStack(spacing: 0) {
            Text(title)
                .font(.headline)
                .foregroundColor(.white)
                .frame(maxWidth: .infinity, minHeight: 30,alignment: .leading)
                .padding(.horizontal, 5)
            Text(bodyText)
                .font(.title)
                .foregroundColor(.white)
                .frame(maxWidth: .infinity, minHeight: 90, alignment: .center)
            Text(subtitle)
                .font(.subheadline)
                .foregroundColor(.white)
                .frame(height: 30)
        }
        .frame(maxWidth: .infinity)
        .background(Color(red: 0x00/255.0, green: 0xaa/255.0, blue: 0xff/255.0, opacity: 0.5))
        .containerShape(RoundedRectangle(cornerRadius: 5.0))
        .padding(0)
    }
}
