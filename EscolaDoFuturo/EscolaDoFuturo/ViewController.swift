//
//  ViewController.swift
//  EscolaDoFuturo
//
//  Created by Lidice Santos on 22/06/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var myTableView: UITableView!
    var arrayPessoas: [Pessoa] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.myTableView.delegate = self
        self.myTableView.dataSource = self
        
        self.myTableView.tableFooterView = UIView() // Para apagar as linhas das células vazias da tabela
        
        // Do any additional setup after loading the view.
        self.myTableView.register(UINib(nibName: "CustomCell", bundle: nil), forCellReuseIdentifier: "CustomCell") // Registrando a Celula. Nib name é o nome do arquivo .xib e o idenfier é o nome da célula, neste caso o nome da Class.
        
        let pessoa1 = Pessoa(nome: "Lídice", sobrenome: "Santos", idade: 30, genero: .feminino)
        let pessoa2 = Pessoa(nome: "Cristina", sobrenome: "Carmo", idade: 23, genero: .feminino)
        let pessoa3 = Pessoa(nome: "Genilson", sobrenome: "Santos", idade: 65, genero: .masculino)
        let pessoa4 = Pessoa(nome: "Lidiane", sobrenome: "Santos", idade: 43, genero: .feminino)
        let pessoa5 = Pessoa(nome: "Vinícius", sobrenome: "Reis", idade: 64, genero: .masculino)
        let pessoa6 = Pessoa(nome: "Joaquina", sobrenome: "Silva", idade: 23, genero: .feminino)
        let pessoa7 = Pessoa(nome: "Ferdinando", sobrenome: "Souza", idade: 22, genero: .masculino)
        let pessoa8 = Pessoa(nome: "Lula", sobrenome: "Silva", idade: 53, genero: .masculino)
        let pessoa9 = Pessoa(nome: "Maria", sobrenome: "De Deus", idade: 55, genero: .feminino)
        let pessoa10 = Pessoa(nome: "José", sobrenome: "Do Pai", idade: 60, genero: .masculino)
        
        arrayPessoas = [pessoa1, pessoa2, pessoa3, pessoa4, pessoa5, pessoa6, pessoa7, pessoa8, pessoa9, pessoa10]
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayPessoas.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: CustomCell? = tableView.dequeueReusableCell(withIdentifier: "CustomCell", for: indexPath) as? CustomCell
        
        cell?.nameLabel.text = arrayPessoas[indexPath.row].nome
        cell?.subtitleLabel.text = arrayPessoas[indexPath.row].sobrenome
        cell?.perfilImage.image = UIImage(named: "user")
//        cell?.textLabel?.text = arrayPessoas[indexPath.row].nome // usado para preencher o title configurado no storeboard

//        cell?.detailTextLabel?.text = arrayPessoas[indexPath.row].sobrenome // usado para preencher o subtitle configurado no storeboard
        
        return cell ?? UITableViewCell()
    }
}
