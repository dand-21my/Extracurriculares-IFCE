//
//  LocaisView.swift
//  FinalProjectFoundation
//
//  Created by Found on 02/06/26.
//

import SwiftUI
import SwiftData
import SwiftDataSQLite

struct LocaisView: View {
    
    @Query var locais: [Local]
    
    var body: some View {
        
    }
}

#Preview {
    LocaisView()
}
