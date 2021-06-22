//
//  Carro.swift
//  polimorfismo
//
//  Created by Lidice Santos on 08/06/21.
//

import Foundation

class Carro: Veiculo {
    var tamanhoRoda: Double
    var distancia: Double
    
    init(cor: String, preco: Double, qtdPassageiros: Double, tamanhoRoda: Double, distancia: Double) {
        self.distancia = distancia
        self.tamanhoRoda = tamanhoRoda
        self.tamanhoRoda = tamanhoRoda
        super.init(cor: cor, preco: preco, qtdPassageiros: qtdPassageiros)
    }
    
    override func calculaCombustivel1(distancia: Double, quantidadePassageiros: Double, tamanhoRodas: Double) -> Double {
        return tamanhoRodas * qtdPassageiros * distancia
    }
}
