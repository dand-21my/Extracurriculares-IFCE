//
//  ContentView.swift
//  FinalProjectFoundation
//
//  Created by Beatriz Leonel on 28/05/26.
//

import SwiftUI
import SwiftData
import SwiftDataSQLite

struct MainView: View {
    var body: some View {
        TabView {
            
            Tab("Atividades", systemImage: "book") {
                
                InicialView()
            }
            
            Tab("locais", systemImage: "map") {
                
                LocaisView()
            }
            Tab("interesses", systemImage: "heart") {
                
                interessesView()
                
            }
        }
        .tint(.pink)
       
    }
}


#Preview {
    MainView()
        .modelContainer(
            for: [Esporte.self, ArteCultura.self, Locais.self],
            inMemory: true,
            sqliteDatabasePath: Bundle.main.path(
                forResource: "db",
                ofType: "sqlite"
            )!
        )
}
