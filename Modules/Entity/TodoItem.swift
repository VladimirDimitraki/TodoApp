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
    var createdData: Data?
    var isCompleted: Bool?
    
    init(title: String? = nil, description: String? = nil, createdData: Data? = nil, isCompleted: Bool? = nil) {
        self.title = title
        self.description = description
        self.createdData = createdData
        self.isCompleted = isCompleted
    }
}
