//
//  CulturaArteView.swift
//  FinalProjectFoundation
//
//  Created by Found on 02/06/26.
//

import SwiftUI

struct CulturaArteView: View {
    var body: some View {
        NavigationStack {
            List {
                NavigationLink(destination: Text("Detalhes de Música"))
                {
                    Text("Música")
                        .font(.body)
                        .padding(.vertical, 3)
                }
                
                NavigationLink(destination: Text("Detalhes de Teatro")) {
                    Text("Teatro")
                        .font(.body)
                        .padding(.vertical, 3)
                }
                
                NavigationLink(destination: Text("Detalhes de Coral"))
                {
                    Text("Coral")
                        .font(.body)
                        .padding(.vertical, 3)
                }
                NavigationLink(destination: Text("Detalhes de Libras"))
                {
                    Text("Libras")
                        .font(.body)
                        .padding(.vertical, 3)
                }
            }
            .navigationTitle("Cultura/Arte")
            .scrollContentBackground(.hidden)
            .background(Color.verdeback)
        }
    }
}

#Preview {
    CulturaArteView()
}
