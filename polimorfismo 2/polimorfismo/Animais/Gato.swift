//
//  Gato.swift
//  polimorfismo
//
//  Created by Fernando Douglas Vieira on 08/06/2021.
//

import Foundation

class Gato: Animal {
 
    override init(nome: String, cor: String) {
        super.init(nome: nome, cor: cor)
    }
    
    override func emitirSom() -> String {
        return "Miaaauuuwwww"
    }
    
    override func comer() {
        print("Devorando um peixe!")
    }
}
