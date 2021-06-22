//
//  designerClass.swift
//  polimorfismo
//
//  Created by Lidice Santos on 08/06/21.
//

import Foundation

class Designer: Funcionario {
    var ferramentaFavorita: String
    
    init(nome: String, salario: Double, cpf: String, ferramentaFavorita: String) {
        self.ferramentaFavorita = ferramentaFavorita
        super.init(nome: nome, salario: salario, cpf: cpf)
    }
}
