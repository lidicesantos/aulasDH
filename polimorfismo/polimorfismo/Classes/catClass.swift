//
//  catClass.swift
//  polimorfismo
//
//  Created by Lidice Santos on 08/06/21.
//

import Foundation

class Cat: Animal {
    
    override init(nome: String, cor: String) {
        super.init(nome: nome, cor: cor)
    }
    
    override func emitirSom() -> String {
        return "Miaaaauuuuw"
    }
    
    override func comer() {
        print("Devorando um peixe")
    }
    
}
