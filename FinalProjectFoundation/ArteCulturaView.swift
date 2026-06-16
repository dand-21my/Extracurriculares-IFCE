//
//  ArteCulturaView.swift
//  FinalProjectFoundation
//
//  Created by Found on 16/06/26.
//

import SwiftData
import SwiftDataSQLite
import SwiftUI

struct ArteCulturaView: View {
    @Query var arteCultura: [ArteCultura]

    var body: some View {
        NavigationStack {
            List(arteCultura) { arteCultura in
                NavigationLink {
                    ArteCulturaDetailView(arteCultura: arteCultura)
                } label: {
                    Text(arteCultura.nome)
                }
            }
            .navigationTitle("Arte e Cultura")
            .scrollContentBackground(.hidden)
            .background(Color.verdeback)
        }
    }
}

#Preview {
    ArteCulturaView()
        .modelContainer(
            for: [ArteCultura.self],
            inMemory: true,
            sqliteDatabasePath: Bundle.main.path(
                forResource: "db",
                ofType: "sqlite"
            )!
        )
}
