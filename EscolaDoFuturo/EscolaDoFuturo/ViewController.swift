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
        
        let pessoa1 = Pessoa(nome: "Lídice", sobrenome: "Santos", idade: 30, genero: .feminino, avatar: "image1")
        let pessoa2 = Pessoa(nome: "Cristina", sobrenome: "Carmo", idade: 23, genero: .feminino, avatar: "image2")
        let pessoa3 = Pessoa(nome: "Genilson", sobrenome: "Santos", idade: 65, genero: .masculino, avatar: "image3")
        let pessoa4 = Pessoa(nome: "Lidiane", sobrenome: "Santos", idade: 43, genero: .feminino, avatar: "image4")
        let pessoa5 = Pessoa(nome: "Vinícius", sobrenome: "Reis", idade: 64, genero: .masculino, avatar: "image5")
        let pessoa6 = Pessoa(nome: "Joaquina", sobrenome: "Silva", idade: 23, genero: .feminino, avatar: "image1")
        let pessoa7 = Pessoa(nome: "Ferdinando", sobrenome: "Souza", idade: 22, genero: .masculino, avatar: "image2")
        let pessoa8 = Pessoa(nome: "Lula", sobrenome: "Silva", idade: 53, genero: .masculino, avatar: "image3")
        let pessoa9 = Pessoa(nome: "Maria", sobrenome: "De Deus", idade: 55, genero: .feminino, avatar: "image4")
        let pessoa10 = Pessoa(nome: "José", sobrenome: "Do Pai", idade: 60, genero: .masculino, avatar: "image5")
        
        arrayPessoas = [pessoa1, pessoa2, pessoa3, pessoa4, pessoa5, pessoa6, pessoa7, pessoa8, pessoa9, pessoa10]
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayPessoas.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: CustomCell? = tableView.dequeueReusableCell(withIdentifier: "CustomCell", for: indexPath) as? CustomCell
        
        cell?.setup(value: arrayPessoas[indexPath.row])
        
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {  // funcao que ao clicar em uma pessoa vai capturar os dados da pessoa selecionada
         
        let pessoaSelecionada: Pessoa = arrayPessoas[indexPath.row] // para capturar a pessoa selecionada de acordo com o index do array
        
        performSegue(withIdentifier: "DetailViewController", sender: pessoaSelecionada) // é uma forma de fazer programaticamente o disparo do segue feito em storeboard da tela principal para a de detalhes.
    }
    
    // para conseguir interseptar a acao de uma tela para a outra para que as coisas aconteçam da forma que voce quer, se precisar enviar algo precisa desta funcao
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let vc: DetailViewController? = segue.destination as? DetailViewController // instancia uma vc do tipo DetailViewController
//        vc?.detailImageView.image = UIImage(named: "testando") // nao é possível acessar o outlet detailImageView pois ele só pode ser acessado dps que a tela foi carregada, como este método intersepta a acao antes da tela estar carregada vamos criar uma variável receptora na DetailViewControler e chamamos de: pessoaSelecionada. Por isso está comentada.
        vc?.pessoaSelecionada = sender as? Pessoa // A pessoaSelecionada criada na detailViewController vai ser o sender enviado por esta funcao e estou confirmando que é do tipo pessoa
    }
}
