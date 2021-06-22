//
//  animalClass.swift
//  polimorfismo
//
//  Created by Lidice Santos on 08/06/21.
//

import Foundation

class Animal {
    var nome: String
    var cor: String
    
    init(nome: String, cor: String) {
        self.nome = nome
        self.cor = cor
    }
    
    func emitirSom() -> String {
        return "O animal está emitindo um som"
    }
    
    func comer() {
        print("O animal está comendo")
    }
    
    func andar() {
        print("O animal \(nome) está andando")
    }
}
