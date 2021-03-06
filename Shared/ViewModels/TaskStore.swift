//
//  TaskStore.swift
//  Reminders (iOS)
//
//  Created by Angus McAloon on 2022-01-20.
//

import Foundation

class TaskStore: ObservableObject {
    
    // MARK: Stored properties
    @Published var tasks: [Task]
    
    // MARK: Initializers
    init(tasks: [Task] = []) {
        self.tasks = tasks
    }
    
    //MARK: Functions
    func deleteItems(at offsets: IndexSet) {
        // "offsets" contains a set of items selected for deletion
        // the set is then passed to the built-in "remove" method on
        // the "tasks" array which handles removal from the array
        tasks.remove(atOffsets: offsets)
    }
    // Invoked to move items around in our list
    func moveItems(from source: IndexSet, to destination: Int) {
        // "source" again contains a set of item(s) being moved
        // "destination" is the location the items are being moved to in the list
        // These arguments are automaticlly populated for us by the
        // .onMove view modifier provided by the swiftUI framework
        tasks.move(fromOffsets: source, toOffset: destination)
    }
    
} 

var testStore = TaskStore(tasks: testData)
