//
//  Aviao.swift
//  polimorfismo
//
//  Created by Lidice Santos on 08/06/21.
//

import Foundation

class Aviao: Veiculo {
    var piloto: String
    var ciaAerea: String
    
    init(cor: String, preco: Double, qtdPassageiros: Double, piloto: String, ciaAerea: String) {
        self.piloto = piloto
        self.ciaAerea = ciaAerea
        super.init(cor: cor, preco: preco, qtdPassageiros: qtdPassageiros)
    }
    
    override func calculaCombustivel2(distancia: Double, quantidadePassageiros: Double) -> Double {
        return distancia * quantidadePassageiros
    }
}
