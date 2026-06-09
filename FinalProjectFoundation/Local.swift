//
//  locaisView.swift
//  FinalProjectFoundation
//
//  Created by Found on 02/06/26.


import SwiftUI
import SwiftData
import SwiftDataSQLite

@SQLiteTable("Locais")
@Model
class Locais: Identifiable {
    var id: Int
    var name: String
    var foto: Data

    init(id: Int, name: String, foto: Data) {
        self.id = id
        self.name = name
        self.foto = foto
    }
}
