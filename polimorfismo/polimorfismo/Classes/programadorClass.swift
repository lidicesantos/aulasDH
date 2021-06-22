//
//  programadorClass.swift
//  polimorfismo
//
//  Created by Lidice Santos on 08/06/21.
//

import Foundation

class Programador: Funcionario {
    var plataformaDeTrabalho: String
    
    init(nome: String, salario: Double, cpf: String, plataforma: String) {
        self.plataformaDeTrabalho = plataforma
        super.init(nome: nome, salario: salario, cpf: cpf)
    }
    
    
}
