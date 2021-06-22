//
//  ViewController.swift
//  polimorfismo
//
//  Created by Fernando Douglas Vieira on 08/06/2021.
//

import UIKit

class ViewController: UIViewController {

    let mimosa: Animal = Vaca(nome: "Mimosa", cor: "Marrom", litrosDeLeiteProduzidosPorDia: 3)
    let adamastor: Animal = Gato(nome: "Adamastor", cor: "Preto")
    
    let programador: Funcionario = Programador(nome: "William",
                                               salario: 5000.0,
                                               cpf: "123123321",
                                               plataformaDeTrabalho: "Angular")
    
    let designer: Funcionario = Designer(nome: "Marcelo Wagner",
                                         salario: 1000.0,
                                         cpf: "3332211444",
                                         ferramentaPreferida: "Microsoft Paint")
    
    let carro: Veiculo = Carro(cor: "Vinho",
                               preco: 11000.0,
                               quantidadeDePassageiros: 5,
                               tamanhoDasRodas: 14.0)
    
    let tecoTeco: Veiculo = Aviao(cor: "Branco",
                                  preco: 200000.0,
                                  quantidadeDePassageiros: 9,
                                  piloto: "Fernando",
                                  ciaAerea: "VARIG")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mimosa.comer()
        adamastor.comer()
        
        mimosa.andar()
        adamastor.andar()
        
        print("O bonus do programadô \(programador.nome) é R$\(programador.bonus())")
        print("O bonus do designer \(designer.nome) é R$\(designer.bonus())")
        
        print("************")
        print("A quantidade de combustivel utilizada pelo carro é \(carro.calcularCombustivel(km: 135.0)) litros para andar 135km")
        print("A quantidade de combustivel utilizada pelo teco-teco é \(tecoTeco.calcularCombustivel(km: 135.0)) litros para voar 135km")
    }
}

