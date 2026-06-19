import SwiftUI
import SwiftData
import SwiftDataSQLite

struct EsporteDetailView: View {
<<<<<<< HEAD
    var esporte: Esporte
    
=======
    let esporte: Esporte
 
>>>>>>> main
    var body: some View {
        List {
            Section {
                Image(uiImage: UIImage(data: esporte.foto)!)
                    .resizable()
                    .frame(width: 360, height: 250)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
<<<<<<< HEAD
                
                
              
=======
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
>>>>>>> main
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
        .toolbar {
            ToolbarItem(placement: .automatic) {
                Button(
                    "Favoritar",
                    systemImage: (esporte.isFavorite ?? false) ? "heart.fill": "heart"
                ) {
                    print(esporte.isFavorite)
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
                    esporte.isFavorito.toggle()
                    if esporte.isFavorito {
                       
                    }
                } label: {
                    Image(systemName: esporte.isFavorito ? "heart.fill" : "heart")
                        .foregroundStyle(esporte.isFavorito ? .green : .gray)
                }
            }
        }
    }
}
