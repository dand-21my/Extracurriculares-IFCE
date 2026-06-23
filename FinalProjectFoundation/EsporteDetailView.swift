import SwiftUI
import SwiftData
import SwiftDataSQLite

struct EsporteDetailView: View {
    
    @Bindable var esporte: Esporte
    
    var body: some View {
        List {
            Section {
                Image(uiImage: UIImage(data: esporte.foto)!)
                    .resizable()
                    .frame(width: 360, height: 250)
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
                
                .listRowSeparator(.hidden)
            }
            .toolbar {
                ToolbarItem(placement: .automatic) {
                    Button(
                        "Favoritar",
                        systemImage: (esporte.isFavorite ?? false) ? "heart.fill": "heart"
                    ) {
                        esporte.isFavorite?.toggle()
                        
                    }
                }
            }
            .listStyle(.plain)
            .navigationTitle(esporte.nome)
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        esporte.isFavorite?.toggle()
                        if esporte.isFavorite == true {
                            
                        }
                    } label: {
                        Image(systemName: esporte.isFavorite ?? false ? "heart.fill" : "heart")
                            .foregroundStyle(esporte.isFavorite ?? false ? .green : .gray)
                    }
                }
            }
        }
    }
}
