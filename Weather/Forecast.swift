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
    Forecast(day: "Monday", imageName: "sun.max.fill", lowTemperature: 10, highTemperature: 15, arrange: 20),
    Forecast(day: "Tuseday", imageName: "sun.max.fill", lowTemperature: 9, highTemperature: 16, arrange: 20),
    Forecast(day: "Wednesday", imageName: "cloud.sun.fill", lowTemperature: 12, highTemperature: 17, arrange: 20),
    Forecast(day: "Thursday", imageName: "cloud.sun.fill", lowTemperature: 11, highTemperature: 12, arrange: 20),
    Forecast(day: "Friday", imageName: "sun.max.fill", lowTemperature: 11, highTemperature: 12, arrange: 20)
]
