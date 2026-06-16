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
                
                NavigationLink(destination: CulturaArteView())
                {
                    Text("Cultura/Arte")
                        .font(.body)
                        .padding(.vertical,4)
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
