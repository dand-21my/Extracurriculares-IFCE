//
//  ContentView.swift
//  FinalProjectFoundation
//
//  Created by Beatriz Leonel on 28/05/26.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            
                Tab("Atividades", systemImage: "book") {
                    
                    InicialView()
                }
                
                Tab("locais", systemImage: "map") {
                    
                    LocaisView()
                }
                Tab("interesses", systemImage: "heart") {
                    
                    interessesView()
                }
            }
        }
    }




#Preview {
    MainView()
}
