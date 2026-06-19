//
//  Esporte.swift
//  FinalProjectFoundation
//
//  Created by Found on 09/06/26.
//

import SwiftUI
import SwiftData
import SwiftDataSQLite

@SQLiteTable("Esportes")
@Model
class Esporte: Identifiable {
    var id: Int
    var nome: String
    var orientador: String
    var local: String
    var dias: String
    var horario: String
    var ensino: String
    var contato: String
    var foto: Data
    var isFavorito: Bool // Adicione esta linha

    init(
        id: Int,
        nome: String,
        orientador: String,
        local: String,
        dias: String,
        horario: String,
        ensino: String,
        contato: String,
        foto: Data,
        isFavorito: Bool = false // Adicione o parâmetro no init
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
        self.isFavorito = isFavorito
    } 
}
