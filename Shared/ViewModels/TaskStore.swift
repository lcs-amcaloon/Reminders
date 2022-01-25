//
//  TaskStore.swift
//  Reminders (iOS)
//
//  Created by Angus McAloon on 2022-01-20.
//

import Foundation

class TaskStore: ObservableObject {
    @Published var tasks: [Task]
    
    init(tasks: [Task] = []) {
        self.tasks = tasks
    }
}

var testStore = TaskStore(tasks: testData)
