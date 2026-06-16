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
                
            }
            .listRowSeparator(.hidden)
            ZStack(alignment: .leading) {
                RoundedRectangle(cornerRadius: 16)
                    .stroke(.green)
                VStack(alignment: .leading) {
                    Text("Orientador").bold()
                    Text(arteCultura.orientador)
                    
                    Divider()
                    
                    Text("Local").bold()
                    Text(arteCultura.local)
                    
                    Divider()
                    
                    Text("Dias").bold()
                    Text(arteCultura.dias)
                    
                    Divider()
                    
                    Text("Horário").bold()
                    Text(arteCultura.horario)
                    
                    Divider()
                    
                    Text("Ensino").bold()
                    Text(arteCultura.ensino)
                    
                    Divider()
                    
                    Text("Contato").bold()
                    Text(arteCultura.contato)
                }
                .padding()
            }
            
            .listStyle(.plain)
            .navigationTitle(arteCultura.nome)
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}
