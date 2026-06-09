//
//  LocaisView.swift
//  FinalProjectFoundation
//
//  Created by Found on 02/06/26.


import SwiftUI
import SwiftData
import SwiftDataSQLite


import SwiftUI

struct LocalRowView: View {
    
    let local: Locais
    
    var body: some View {
        VStack(spacing: 12) {
            Image(uiImage: UIImage(data: local.foto)!)
                .resizable()
                .scaledToFill()
                .frame(width: 350, height: 200)
                .clipShape(RoundedRectangle(cornerRadius: 20))
            
            Text(local.name)
                .font(.headline)
        }
    }
}

