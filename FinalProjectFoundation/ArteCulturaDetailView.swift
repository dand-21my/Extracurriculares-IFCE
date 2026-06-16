//
//  ArteCulturaDetailView.swift
//  FinalProjectFoundation
//
//  Created by Found on 16/06/26.
//

import SwiftUI
import SwiftData
import SwiftDataSQLite

struct ArteCulturaDetailView: View {
    let arteCultura: ArteCultura
    
    var body: some View {
        List {
            Section {
                Image(uiImage: UIImage(data: arteCultura.foto)!)
                    .resizable()
                    .frame(width:360, height: 250)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                
                
                Text("Orientador").bold()
                Text(arteCultura.orientador)
                Text("Local").bold()
                Text(arteCultura.local)
                Text("Dias").bold()
                Text(arteCultura.dias)
                Text("Horário").bold()
                Text(arteCultura.horario)
                Text("Ensino").bold()
                Text(arteCultura.ensino)
                Text("Contato").bold()
                Text(arteCultura.contato)
            }
            .listRowSeparator(.hidden)
        }
        
        .listStyle(.plain)
        .navigationTitle(arteCultura.nome)
        .navigationBarTitleDisplayMode(.inline)
    }
}
