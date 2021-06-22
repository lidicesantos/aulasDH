//
//  cowClass.swift
//  polimorfismo
//
//  Created by Lidice Santos on 08/06/21.
//

import Foundation


class Cow: Animal {
    var litrosProduzidosPorDia: Int
    
    init(name: String, color: String, litrosPorDia: Int) {
        self.litrosProduzidosPorDia = litrosPorDia
        super.init(nome: name, cor: color)

    }
    
    override func emitirSom() -> String {
        return "Muuuuu"
    }
    
    override func comer() {
        print("Hummm que capim gostoso!")
    }
}
