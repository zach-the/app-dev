//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Zachary Bennett on 11/21/24.
//

import SwiftUI
import FirebaseCore

@main
struct ToDoListApp: App {
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
