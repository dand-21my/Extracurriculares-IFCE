//
//  EsportesView.swift
//  FinalProjectFoundation
//
//  Created by Found on 09/06/26.
//

import SwiftData
import SwiftDataSQLite
import SwiftUI

struct EsportesView: View {
    @Query var esporte: [Esporte]

    var body: some View {
        NavigationStack {
            List(esporte) { esporte in
                NavigationLink {
                    EsporteDetailView(esporte: esporte)
                } label: {
                    Text(esporte.nome)
                }
            }
            .navigationTitle("Esportes")
            .scrollContentBackground(.hidden)
            .background(Color.verdeback)     
        }
    }
}

#Preview {
    EsportesView()
        .modelContainer(
                   for: [Esporte.self],
                   inMemory: true,
                   sqliteDatabasePath: Bundle.main.path(
                       forResource: "db",
                       ofType: "sqlite"
                   )!
        )
}
