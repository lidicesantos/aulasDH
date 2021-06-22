//
//  ViewController.swift
//  TableView
//
//  Created by Lidice Santos on 22/06/21.
//

import UIKit

enum Categoria: Int {
    case carros = 0
    case motos = 1
}

class ViewController: UIViewController {

    @IBOutlet weak var myTableView: UITableView!
    var arrayCarros = ["Gol", "Fusca", "Tesla", "Jeep", "Brasília amarela"]
    var arrayMotos = ["Honda", "Naked", "Trilha"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.myTableView.delegate = self
        self.myTableView.dataSource = self
    }
}

// MARK: - UITabBarDelegate, UITableViewDataSource

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case Categoria.carros.rawValue:
            return arrayCarros.count
        case Categoria.motos.rawValue:
            return arrayMotos.count
        default: return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        //        cell.textLabel?.text = String(indexPath.row)
        //        cell.detailTextLabel?.text = "Digital House"
        
        if indexPath.section == Categoria.carros.rawValue {
            cell.textLabel?.text = arrayCarros[indexPath.row]
        } else {
            cell.textLabel?.text = arrayMotos[indexPath.row]
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.section == Categoria.carros.rawValue {
            print("O carro selecionado foi \(arrayCarros[indexPath.row])")
        } else {
            print("A moto selecionado foi \(arrayMotos[indexPath.row])")
        }
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case Categoria.carros.rawValue:
            return "Carros"
        case Categoria.motos.rawValue :
            return "Motos"
        default: return ""
        }
    }
}

