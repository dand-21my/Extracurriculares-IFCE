//
//  interessesView.swift
//  FinalProjectFoundation
//
//  Created by Found on 02/06/26.
//

import SwiftUI
import SwiftData

struct interessesView: View {
    @Query(filter: #Predicate<ArteCultura> { arteCultura in
        arteCultura.isFavorite == true
    }) var arteCultura: [ArteCultura]
    @Query(filter: #Predicate<Esporte> { esporte in
        esporte.isFavorite == true
    }) var esporte: [Esporte]
    
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color.verdeback
                    .ignoresSafeArea()
                
                List {
                    Section("Arte e Cultura") {
                        ForEach(arteCultura) { arteCultura in
                            VStack {
                                Image(
                                    uiImage: UIImage(
                                        data: arteCultura.foto
                                    )!
                                )
                                .resizable().scaledToFit()
                                .clipShape(
                                    RoundedRectangle(cornerRadius:34)
                                )
                                
                                Text(arteCultura.nome)
                            }
                            .padding(9)
                            .background(
                                RoundedRectangle(cornerRadius:34)
                                    .stroke(Color.primary.opacity(1))
                                    .background(Color.white)
                                
                            )
                        }
                    }
                    .listRowSeparator(.hidden)
                    .listRowBackground(Color.clear)
                    
                    
                    Section("Esportes") {
                        ForEach(esporte) { esporte in
                            VStack {
                                Image(
                                    uiImage: UIImage(
                                        data: esporte.foto
                                    )!
                                )
                                .resizable()
                                .scaledToFit()
                                .clipShape(
                                    RoundedRectangle(cornerRadius:34)
                                )
                                Text(esporte.nome)
                            }
                            .padding(9)
                            .background(
                                RoundedRectangle(cornerRadius:34)
                                    .stroke(Color.primary.opacity(1))
                                    .background(Color.white)
                                
                            )
                        }
                        
                    }
                    
                }
                .listStyle(.plain)
                .scrollContentBackground(.hidden)
                .background(Color.clear)            }
            .navigationTitle("Meus interesses")
        }
    }
}


#Preview {
    interessesView()
}
