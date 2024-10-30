//
//  TodoItem.swift
//  Todo
//
//  Created by Melania Dababi on 10/14/24.
//

import Foundation

class TodoItem {
    var id: UUID = UUID()
    var title: String?
    var description: String?
    var dataCreated = LocalTime.getCurrentTime
    
    var isCompleted: Bool?
    
    init(title: String? = nil, description: String? = nil, isCompleted: Bool? = nil) {
        self.title = title
        self.description = description
        self.isCompleted = isCompleted
    }
}
