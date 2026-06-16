//
//  InicialView.swift
//  FinalProjectFoundation
//
//  Created by Found on 02/06/26.
//

import SwiftUI

struct InicialView: View {
    var body: some View {
        NavigationStack {
            List {
                NavigationLink(destination: EsportesView())
                {
                    Text("Esporte")
                        .font(.body)
                        .padding(.vertical,4)
                }
                
                NavigationLink(destination: ArteCulturaView())
                {
                    Text("Cultura/Arte")
                        .font(.body)
                        .padding(.vertical,4)
                }
                
                NavigationLink(destination: ArteCulturaView()) { // AQUI está a mudança!
                   Text("Cultura/Arte")
                    
                }
            }
            .navigationTitle("Atividades")
            .scrollContentBackground(.hidden)
            .background(Color.verdeback)
        }
    }
}

#Preview {
    InicialView()
}

