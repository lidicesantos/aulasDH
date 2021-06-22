//
//  Veiculo.swift
//  polimorfismo
//
//  Created by Fernando Douglas Vieira on 08/06/2021.
//

import Foundation

class Veiculo {
    var cor: String
    var preco: Double
    var quantidadeDePassageiros: Int
    
    init(cor: String, preco: Double, quantidadeDePassageiros: Int) {
        self.cor = cor
        self.preco = preco
        self.quantidadeDePassageiros = quantidadeDePassageiros
    }
    
    func calcularCombustivel(km: Double) -> Double {
        return Double(quantidadeDePassageiros) * km
    }
}
