//
//  FinalProjectFoundationApp.swift
//  FinalProjectFoundation
//
//  Created by Beatriz Leonel on 28/05/26.
//
import SwiftDataSQLite
import SwiftUI
import SwiftData
@main
struct FinalProjectFoundationApp: App {
    var body: some Scene {
        WindowGroup {
            MainView()
                .modelContainer(
                    for: [Locais.self, Esporte.self, ArteCultura.self], 
                    inMemory: true,
                    sqliteDatabasePath: Bundle.main.path(
                        forResource: "db",
                        ofType: "sqlite"
                    )!
                )
        }
    }
}
