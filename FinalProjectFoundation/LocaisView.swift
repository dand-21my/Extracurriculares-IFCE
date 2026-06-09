//
//  ContentView.swift
//  FinalProjectFoundation
//
//  Created by Beatriz Leonel on 28/05/26.


import SwiftUI
import SwiftData
import SwiftDataSQLite

struct LocaisView: View {

    @Query var locais: [Locais]

    var body: some View {
        NavigationStack {
            List {
                ForEach(locais) { local in

                        LocalRowView(local: local)
                    .padding(9)
                    .background(
                        RoundedRectangle(cornerRadius:34)
                            .stroke(Color.primary.opacity(1))
                    )
                    .listRowSeparator(.hidden)
                }
            }
            .listStyle(.plain)
            .navigationTitle("Conheça o IF")
        }
    }
}
#Preview {
    LocaisView()
        .modelContainer(
            for: [Locais.self],
            inMemory: true,
            sqliteDatabasePath: Bundle.main.path(
                forResource: "db",
                ofType: "sqlite"
            )!
        )
}
