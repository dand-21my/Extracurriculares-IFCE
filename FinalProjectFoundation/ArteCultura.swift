//
//  ArteCultura.swift
//  FinalProjectFoundation
//
//  Created by Found on 16/06/26.
//

import SwiftUI
import SwiftData
import SwiftDataSQLite

@SQLiteTable("ArteCultura")
@Model
class ArteCultura: Identifiable {
    var id: String
    var nome: String
    var orientador: String
    var local: String
    var dias: String
    var horario: String
    var ensino: String
    var contato: String
    var foto: Data
    var isFavorite : Bool?

    init(
        id: String,
        nome: String,
        orientador: String,
        local: String,
        dias: String,
        horario: String,
        ensino: String,
        contato: String,
        foto: Data,
        isFavorite: Bool? = nil
    ) {
        self.id = id
        self.nome = nome
        self.orientador = orientador
        self.local = local
        self.dias = dias
        self.horario = horario
        self.ensino = ensino
        self.contato = contato
        self.foto = foto
        self.isFavorite = isFavorite
    }
}
