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
                Image(uiImage: UIImage(data: esporte.foto)!)
                .resizable()
                .frame(width:360, height: 250)
                .clipShape(RoundedRectangle(cornerRadius: 20))
                Text("Orientador").bold()
                Text(esporte.orientador)
                Text("Local").bold()
                Text(esporte.local)
                Text("Dias").bold()
                Text(esporte.dias)
                Text("Horário").bold()
                Text(esporte.horario)
                Text("Ensino").bold()
                Text(esporte.ensino)
                Text("Contato").bold()
                Text(esporte.contato)
            }
        
        .listStyle(.plain)
        .navigationTitle(esporte.nome)
        .navigationBarTitleDisplayMode(.inline)
    }
}
