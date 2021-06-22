//
//  Vaca.swift
//  polimorfismo
//
//  Created by Fernando Douglas Vieira on 08/06/2021.
//

import Foundation

class Vaca: Animal {
    
    var litrosDeLeiteProduzidosPorDia: Int
    
    init(nome: String, cor: String, litrosDeLeiteProduzidosPorDia: Int) {
        self.litrosDeLeiteProduzidosPorDia = litrosDeLeiteProduzidosPorDia
        super.init(nome: nome, cor: cor)
        
    }
    
    override func emitirSom() -> String {
        return "Muuuuuuu"
    }
    
    override func comer() {
        print("Hmmm que capim gostoso!")
    }
}
