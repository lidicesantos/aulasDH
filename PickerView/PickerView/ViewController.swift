//
//  ViewController.swift
//  PickerView
//
//  Created by Lidice Santos on 20/07/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var myPickerView: UIPickerView!
    
    var arrayNomes: [String] = ["Lídice", "Vinícius", "Baco", "Cristina", "Lidiane"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.myPickerView.delegate = self
        self.myPickerView.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    @IBAction func tappedSelectButton(_ sender: Any) {
        titleLabel.text = arrayNomes[myPickerView.selectedRow(inComponent: 0)]
        myPickerView.selectRow(2, inComponent: 0, animated: true)
    }
}

extension ViewController: UIPickerViewDelegate, UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return arrayNomes.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        titleLabel.text = arrayNomes[row]
        return arrayNomes[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        print("indice Selecionado: \(row) e coluna: \(component)")
//        titleLabel.text = arrayNomes[row]
//        titleLabel.text = arrayNomes[row]
    }
}
