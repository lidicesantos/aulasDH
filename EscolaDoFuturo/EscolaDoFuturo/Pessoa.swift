//
//  Aluno.swift
//  EscolaDoFuturo
//
//  Created by Lidice Santos on 22/06/21.
//

import Foundation

enum Genero: String {
    case masculino = "masculino"
    case feminino = "feminino"
}

class Pessoa {
    var nome: String?
    var sobrenome: String?
    var idade: Int?
    var genero: Genero?
    
    init(nome: String?, sobrenome: String?, idade: Int?, genero: Genero?) {
        self.nome = nome
        self.sobrenome = sobrenome
        self.idade = idade
        self.genero = genero
    }
}
