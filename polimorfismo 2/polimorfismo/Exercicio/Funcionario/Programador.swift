//
//  Programador.swift
//  polimorfismo
//
//  Created by Fernando Douglas Vieira on 08/06/2021.
//

import Foundation

class Programador: Funcionario {
    var plataformaDeTrabalho: String
    
    init(nome: String, salario: Double, cpf: String, plataformaDeTrabalho: String) {
        self.plataformaDeTrabalho = plataformaDeTrabalho
        super.init(nome: nome, salario: salario, cpf: cpf)
    }
    
    override func bonus() -> Double {
        return salario * 0.20
    }
}
