//
//  Carro.swift
//  polimorfismo
//
//  Created by Fernando Douglas Vieira on 08/06/2021.
//

import Foundation

class Carro: Veiculo {
    var tamanhoDasRodas: Double
    
    init(cor: String, preco: Double, quantidadeDePassageiros: Int, tamanhoDasRodas: Double) {
        self.tamanhoDasRodas = tamanhoDasRodas
        super.init(cor: cor, preco: preco, quantidadeDePassageiros: quantidadeDePassageiros)
    }
    
    override func calcularCombustivel(km: Double) -> Double {
        return tamanhoDasRodas * Double(quantidadeDePassageiros) * km
    }
}
