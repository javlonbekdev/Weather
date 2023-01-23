//
//  ViewModel.swift
//  Weather
//
//  Created by Javlonbek on 23/01/23.
//

import Foundation

class ViewModel: ObservableObject {
    
    @Published var day = true
    
    let columns: [Weather] = [
        Weather(day: "Tue", icon: "cloud.sun.fill", temprature: "-1"),
        Weather(day: "Wed", icon: "sun.min.fill", temprature: "3"),
        Weather(day: "Tue", icon: "cloud.sun.fill", temprature: "-1"),
        Weather(day: "Wed", icon: "sun.min.fill", temprature: "3"),
        Weather(day: "Thu", icon: "sunset.fill", temprature: "1")
    ]
}

struct Weather: Hashable {
    let day: String
    let icon: String
    let temprature: String
}
