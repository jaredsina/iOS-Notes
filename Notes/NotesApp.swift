//
//  NotesApp.swift
//  Notes
//
//  Created by Jared Sinai Hernandez Adame on 4/1/25.
//

import SwiftUI
import SwiftData

/// struct is like a class in that it encapsulates properties and behaviors (methods)
/// Difference being struct are copied not referenced
/// The type of NotesApp is App which is required by swiftui
/// define where the app starts with @main
@main
struct NotesApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Item.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(sharedModelContainer)
    }
}
