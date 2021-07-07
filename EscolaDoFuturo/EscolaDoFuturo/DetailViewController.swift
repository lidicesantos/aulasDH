//
//  DetailViewController.swift
//  EscolaDoFuturo
//
//  Created by Lidice Santos on 07/07/21.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var detailImageView: UIImageView!
    @IBOutlet weak var nomeLabel: UILabel!
    @IBOutlet weak var sobrenomeLabel: UILabel!
    @IBOutlet weak var idadeLabel: UILabel!
    @IBOutlet weak var generoLabel: UILabel!
    
    var pessoaSelecionada: Pessoa?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        detailImageView.image = UIImage(named: pessoaSelecionada?.avatar ?? "")
        nomeLabel.text = pessoaSelecionada?.nome
        sobrenomeLabel.text = pessoaSelecionada?.sobrenome
        idadeLabel.text = String(pessoaSelecionada?.idade ?? 0)
        generoLabel.text = pessoaSelecionada?.genero?.rawValue
        

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
