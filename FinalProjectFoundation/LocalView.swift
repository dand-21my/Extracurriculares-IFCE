//
//  locaisView.swift
//  FinalProjectFoundation
//
//  Created by Found on 02/06/26.
//

import SwiftUI
import SwiftData
import SwiftDataSQLite

struct LocalView: View {
    
    let local: Local
    
    var body: some View {
        VStack {
            NavigationStack{
            List {
                 ForEach(local) { local in
                        NavigationLink {
                            local(local: Local)
                        } label: {
                            local(local: Local)
                        }
                        .padding(8)
                        .background {
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Color.primary.opacity(0.5))
                        }
                        .listRowSeparator(.hidden)
                    }
                }
            }
        }
    }
}
#Preview {
    LocalView(local: Local(id: 1, name: "Quadra"))
}
