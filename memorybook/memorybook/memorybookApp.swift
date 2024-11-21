//
//  memorybookApp.swift
//  memorybook
//
//  Created by Zachary Bennett on 11/19/24.
//

import SwiftUI

@main
struct memorybookApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
