//
//  EsporteDetailView.swift
//  FinalProjectFoundation
//
//  Created by Found on 09/06/26.
//

import SwiftUI
import SwiftData
import SwiftDataSQLite

struct EsporteDetailView: View {
    let esporte: Esporte
    
    var body: some View {
        List {
            Section {
                Image(uiImage: UIImage(data: esporte.foto)!)
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
                    Text(esporte.orientador)
                    
                    Divider()
                    
                    Text("Local").bold()
                    Text(esporte.local)
                    
                    Divider()
                    
                    Text("Dias").bold()
                    Text(esporte.dias)
                    
                    Divider()
                    
                    Text("Horário").bold()
                    Text(esporte.horario)
                    
                    Divider()
                    
                    Text("Ensino").bold()
                    Text(esporte.ensino)
                    
                    Divider()
                    
                    Text("Contato").bold()
                    Text(esporte.contato)
                }
                .padding()
            }
            .listRowSeparator(.hidden)
        }
        
        .listStyle(.plain)
        .navigationTitle(esporte.nome)
        .navigationBarTitleDisplayMode(.inline)
    }
}
