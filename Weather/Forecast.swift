//
//  Forecast.swift
//  Weather
//
//  Created by Anastasia Grey on 2023/12/02.
//

import Foundation

struct Forecast: Identifiable{
    var id = UUID()
    let day: String
    let imageName: String
    let lowTemperature: Int
    let highTemperature: Int
    let arrange: CGFloat
}

var forecast = [
    Forecast(day: "Today", imageName: "cloud.sun.fill", lowTemperature: 13, highTemperature: 18, arrange: 20),
    Forecast(day: "Today", imageName: "sun.max.fill", lowTemperature: 13, highTemperature: 18, arrange: 20),
    Forecast(day: "Today", imageName: "sun.max.fill", lowTemperature: 13, highTemperature: 18, arrange: 20),
    Forecast(day: "Today", imageName: "cloud.sun.fill", lowTemperature: 13, highTemperature: 18, arrange: 20),
    Forecast(day: "Today", imageName: "cloud.sun.fill", lowTemperature: 13, highTemperature: 18, arrange: 20)
]
