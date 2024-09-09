//
//  Task_ManagerApp.swift
//  Task Manager
//
//  Created by Prystupa Taras on 06.09.2024.
//

import SwiftUI

@main
struct Task_ManagerApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: Task.self)
    }
}
