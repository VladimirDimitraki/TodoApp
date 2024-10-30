//
//  CurrentTime.swift
//  Todo
//
//  Created by Melania Dababi on 10/22/24.
//

import Foundation

final class StaticTimeComponents {
    static let shared = StaticTimeComponents()

    let day: String
    let month: String
    let dayOfWeek: String
    
    private init() {
        let calendar = Calendar.current
        let date = Date()
        let components = calendar.dateComponents([.month, .day, .weekday], from: date)
        
        self.day = "\(components.day ?? 0)"
        
        let months = [
            "January", "February", "March", "April", "May", "June",
            "July", "August", "September", "October", "November", "December"
        ]
        self.month = months[components.month! - 1]
        
        let days = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]
        self.dayOfWeek = days[components.weekday! - 1]
    }
}
