//
//  LocalTimeZone.swift
//  Todo
//
//  Created by Melania Dababi on 10/17/24.
//

import Foundation

final class LocalTime {
    static var getCurrentTime: String {
        let currentDate = Date()
        let currentTimeZone = TimeZone.current
        let formatter = DateFormatter()
        
        formatter.dateStyle = .medium
        formatter.timeStyle = .medium
        formatter.timeZone = currentTimeZone
        let createdTime = formatter.string(from: currentDate)
        return createdTime
    }
}

final class TimeComponents {
    private static var components: DateComponents {
        let calendar = Calendar.current
        let date = Date()
        
        let components = calendar.dateComponents([.day, .hour, .minute], from: date)
        
        return components
    }
    
    static var partOfDay: String {
        return components.day.map { $0 > 12 ? "PM" : "AM" } ?? ""
    }
    
    static var minute: String {
        return components.minute.map { "\($0)" } ?? ""
    }
    
    static var hour: String {
        return components.hour.map { "\($0)" } ?? ""
    }
}
