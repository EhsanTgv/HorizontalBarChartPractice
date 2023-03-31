//
//  WeekData.swift
//  HorizontalBarChartPractice
//
//  Created by Ehsan Taghavi on 31.03.2023.
//

import Foundation

struct WeekData: Identifiable{
    var id = UUID()
    var weekDay: String
    var sales: Double
}

var weekSales: [WeekData] =
[
    WeekData(weekDay: "Mon", sales: randomNumber()),
    WeekData(weekDay: "Tue", sales: randomNumber()),
    WeekData(weekDay: "Wed", sales: randomNumber()),
    WeekData(weekDay: "Thu", sales: randomNumber()),
    WeekData(weekDay: "Fri", sales: randomNumber()),
    WeekData(weekDay: "Sat", sales: randomNumber()),
    WeekData(weekDay: "Sun", sales: randomNumber()),
]

func largestSales() -> Double {
    var largest = 0.0
    
    for weekData in weekSales {
        if weekData.sales > largest{
            largest = weekData.sales
        }
    }
    
    return largest
}

func randomNumber() -> Double {
    return Double.random(in: 0...4000)
}
