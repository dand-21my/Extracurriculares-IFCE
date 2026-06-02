//
//  locais.swift
//  FinalProjectFoundation
//
//  Created by Found on 02/06/26.
//

import SwiftUI
import SwiftData
import SwiftDataSQLite

@SQLiteTable("Locais")
@Model
class Local: Identifiable {
    var id: Int
    var name: String
    init(id: Int, name: String) {
        self.id = id
        self.name = name
    }
}
