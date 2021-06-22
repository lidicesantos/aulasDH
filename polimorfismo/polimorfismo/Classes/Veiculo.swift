//
//  Veiculo.swift
//  polimorfismo
//
//  Created by Lidice Santos on 08/06/21.
//

import Foundation

class Veiculo {
    var cor: String = ""
    var preco: Double
    var qtdPassageiros: Double
    
    init(cor: String, preco: Double, qtdPassageiros: Double) {
        self.cor = cor
        self.preco = preco
        self.qtdPassageiros = qtdPassageiros
    }
    
    func calculaCombustivel1(distancia: Double, quantidadePassageiros: Double, tamanhoRodas: Double) -> Double {
        return tamanhoRodas * qtdPassageiros * distancia
    }
    
    func calculaCombustivel2(distancia: Double, quantidadePassageiros: Double) -> Double {
        return qtdPassageiros * distancia
    }

}
