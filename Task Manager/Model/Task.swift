//
//  Task.swift
//  Task Manager
//
//  Created by Prystupa Taras on 06.09.2024.
//

import SwiftUI
import SwiftData

@Model
class Task: Identifiable {
    var id: UUID
    var taskTitle: String
    var creationDate: Date
    var isComplited: Bool
    var tint: String
    
    init(id: UUID = .init(), taskTitle: String, creationDate: Date = .init(), isComplited: Bool = false, tint: String) {
        self.id = id
        self.taskTitle = taskTitle
        self.creationDate = creationDate
        self.isComplited = isComplited
        self.tint = tint
    }
    
    var tintColor: Color {
        switch tint {
        case "TaskColor 1" : return .taskColor1
        case "TaskColor 2" : return .taskColor2
        case "TaskColor 3" : return .taskColor3
        case "TaskColor 4" : return .taskColor4
        case "TaskColor 5" : return .taskColor5
        default: return .black
        }
    }
}


extension Date {
    static func updateHour(_ value: Int) -> Date {
        let calendar = Calendar.current
        return calendar.date(byAdding: .hour, value: value, to: .init()) ?? .init()
    }
}
