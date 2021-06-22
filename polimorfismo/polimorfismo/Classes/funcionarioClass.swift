//
//  funcionarioClass.swift
//  polimorfismo
//
//  Created by Lidice Santos on 08/06/21.
//

import Foundation

class Funcionario {
    var nome: String
    var salario: Double
    var cpf: String
    
    init(nome: String, salario: Double, cpf: String) {
        self.nome = nome
        self.salario = salario
        self.cpf = cpf
    }
    
    func calcularBonus(salario: Double, bonus: Double) {
        let bonus = salario * (bonus / 100)
        print("O bônus do funcionário \(nome) é de: \(bonus)")
    }
}
