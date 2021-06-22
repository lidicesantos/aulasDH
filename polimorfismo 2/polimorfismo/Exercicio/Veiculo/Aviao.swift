//
//  Aviao.swift
//  polimorfismo
//
//  Created by Fernando Douglas Vieira on 08/06/2021.
//

import Foundation

class Aviao: Veiculo {
    var piloto: String
    var ciaAerea: String
    
    init(cor: String, preco: Double, quantidadeDePassageiros: Int, piloto: String, ciaAerea: String) {
        self.piloto = piloto
        self.ciaAerea = ciaAerea
        super.init(cor: cor, preco: preco, quantidadeDePassageiros: quantidadeDePassageiros)
    }
}
