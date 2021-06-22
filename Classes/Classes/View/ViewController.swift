//
//  ViewController.swift
//  Classes
//
//  Created by Lidice Santos on 25/05/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var modeloLabel: UILabel!
    @IBOutlet weak var motorLabel: UILabel!
    @IBOutlet weak var corLabel: UILabel!
    @IBOutlet weak var qtdPortasLabel: UILabel!
    @IBOutlet weak var qtdRodasLabel: UILabel!
    @IBOutlet weak var combustivelLabel: UILabel!
    @IBOutlet weak var anoLabel: UILabel!
    @IBOutlet weak var cambioLabel: UILabel!
    @IBOutlet weak var marcaLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var carro1: Carro = Carro(qtdRodas: 1, cor: "Branco", qtdPortas: 4, marca: "Volkswagen", motor: 2.0, combustivel: ["Flex"], ano: 2020, modelo: "GTS", cambioAutomatico: true)
        
        modeloLabel.text = carro1.modelo
        modeloLabel.backgroundColor = .yellow
        
        motorLabel.text = String((carro1.motor) ?? 2.0)
        motorLabel.backgroundColor = .gray
        
        corLabel.text = carro1.cor
        
        qtdPortasLabel.text = String((carro1.qtdPortas) ?? 2)
        qtdPortasLabel.backgroundColor = .green
        
        qtdRodasLabel.text = String((carro1.qtdRodas) ?? 4)
        qtdRodasLabel.backgroundColor = .blue
        
        combustivelLabel.text = carro1.combustivel?[0]
        combustivelLabel.backgroundColor = .brown
        
        anoLabel.text = String((carro1.ano) ?? 2021)
        anoLabel.backgroundColor = .systemPink
        
        marcaLabel.text = carro1.marca
        marcaLabel.backgroundColor = .red
        
        cambioLabel.text = String(carro1.cambioAutomatico ?? true)
        cambioLabel.backgroundColor = .yellow
        
        
        
        // Do any additional setup after loading the view.
    }


}

