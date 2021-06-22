//
//  Designer.swift
//  polimorfismo
//
//  Created by Fernando Douglas Vieira on 08/06/2021.
//

import Foundation

class Designer: Funcionario {
    var ferramentaPreferida: String
    
    init(nome: String, salario: Double, cpf: String, ferramentaPreferida: String) {
        self.ferramentaPreferida = ferramentaPreferida
        super.init(nome: nome, salario: salario, cpf: cpf)
    }
    
    override func bonus() -> Double {
        return salario * 0.15
    }
}
