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
            
            Tab("Locais", systemImage: "map") {
                
                LocaisView()
            }
            Tab("Interesses", systemImage: "heart") {
                
                interessesView()
                
            }
<<<<<<< HEAD
        }         .tint(.green)
=======
        }
        .tint(.green)
>>>>>>> main
       
    }
}


#Preview {
    MainView()
        .modelContainer(
            for: [Esporte.self, ArteCultura.self, Locais.self],
<<<<<<< HEAD
            inMemory: false,
=======
            inMemory: true,
>>>>>>> main
            sqliteDatabasePath: Bundle.main.path(
                forResource: "db",
                ofType: "sqlite"
            )!
        )
}
