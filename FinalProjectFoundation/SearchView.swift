import SwiftUI
import SwiftData

struct SearchView: View {
    @Query var esportes: [Esporte]
    @Query var artes: [ArteCultura]
    @State private var searchText = ""
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color.green.opacity(0.1).ignoresSafeArea()
                
                VStack(alignment: .leading) {
                    Text("Pesquisar")
                        .font(.largeTitle.bold())
                        .padding(.top)
                        .padding(.horizontal)
                    
                    HStack {
                        Image(systemName: "magnifyingglass")
                            .foregroundStyle(.gray)
                        TextField("Está afim de fazer o que hoje? :)", text: $searchText)
                    }
                    .padding()
                    .background(Color.white)
                    .clipShape(RoundedRectangle(cornerRadius: 15))
                    .padding(.horizontal)
                    
                    
                    if !searchText.isEmpty {
                        List {
                            let filteredEsportes = esportes.filter { 
                                $0.nome.localizedCaseInsensitiveContains(searchText) || 
                                $0.orientador.localizedCaseInsensitiveContains(searchText) 
                            }
                            let filteredArtes = artes.filter { 
                                $0.nome.localizedCaseInsensitiveContains(searchText) || 
                                $0.orientador.localizedCaseInsensitiveContains(searchText) 
                            }
                            
                            if !filteredEsportes.isEmpty {
                                Section("Esportes") {
                                    ForEach(filteredEsportes) { esporte in
                                        NavigationLink(destination: EsporteDetailView(esporte: esporte)) {
                                            Text(esporte.nome)
                                        }
                                    }
                                }
                            }
                            
                            if !filteredArtes.isEmpty {
                                Section("Arte e Cultura") {
                                    ForEach(filteredArtes) { arte in
                                        NavigationLink(destination: ArteCulturaDetailView(arteCultura: arte)) {
                                            Text(arte.nome)
                                        }
                                    }
                                }
                            }
                        }
                        .scrollContentBackground(.hidden)
                        .background(Color.clear)
                    } else {
                       
                        Spacer()
                    }
                }
            }
        }
    }
}
