//
//  Task.swift
//  Reminders (iOS)
//
//  Created by Angus McAloon on 2022-01-20.
//

import Foundation

struct Task: Identifiable {
    var id = UUID()
    var description: String
    var priority: TaskPriority
    var completed: Bool
}

let testData = [
    Task(description: "Get long hair", priority: .high, completed: true),
    Task(description: "Get modelling contract", priority: .medium, completed: false),
    Task(description: "Retire from teaching", priority: .low, completed: false)
]
