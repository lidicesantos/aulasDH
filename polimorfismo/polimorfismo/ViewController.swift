//
//  ViewController.swift
//  polimorfismo
//
//  Created by Lidice Santos on 08/06/21.
//

import UIKit

class ViewController: UIViewController {
    let mimosa: Animal = Cow(name: "Mimosa", color: "String", litrosPorDia: 3)
    let adamastor: Animal = Cat(nome: "Adamastor", cor: "preto")
    
    let dev: Funcionario = Programador(nome: "Lídice", salario: 4005.00, cpf: "095.564.344-96", plataforma: "iOS")
    let design: Funcionario = Designer(nome: "Alaene", salario: 6000.00, cpf: "095.000.000-04", ferramentaFavorita: "Gimp")
    
    var gol: Veiculo = Carro(cor: "Cinza", preco: 56000, qtdPassageiros: 5, tamanhoRoda: 16, distancia: 6)
    var tecoTeco: Veiculo = Aviao(cor: "Cinza", preco: 14000, qtdPassageiros: 100, piloto: "Vinícius", ciaAerea: "Azul")

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        mimosa.comer()
        adamastor.comer()
        
        mimosa.andar()
        adamastor.andar()
        
        dev.calcularBonus(salario: dev.salario, bonus: 20)
        design.calcularBonus(salario: design.salario, bonus: 15)
        

        
    }


}

