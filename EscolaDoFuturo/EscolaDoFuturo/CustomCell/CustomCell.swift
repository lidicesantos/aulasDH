//
//  CustomCell.swift
//  EscolaDoFuturo
//
//  Created by Lidice Santos on 22/06/21.
//

import UIKit

class CustomCell: UITableViewCell {

    @IBOutlet weak var subtitleLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var perfilImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setup(value: Pessoa) {
        nameLabel.text = value.nome
        subtitleLabel.text = value.sobrenome
        perfilImage.image = UIImage(named: value.avatar ?? "")
//        cell?.textLabel?.text = arrayPessoas[indexPath.row].nome // usado para preencher o title configurado no storeboard
//        cell?.detailTextLabel?.text = arrayPessoas[indexPath.row].sobrenome // usado para preencher o subtitle configurado no storeboard
    }
    
    @IBAction func tappedEditButton(_ sender: UIButton) {
        print("tappedEditButton") // para testar se a função funciona
    }
    
}
