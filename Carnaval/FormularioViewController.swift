//
//  FormularioViewController.swift
//  Carnaval
//
//  Created by admin on 24/02/17.
//  Copyright © 2017 Joffily. All rights reserved.
//

import UIKit

class FormularioViewController: UIViewController {


    @IBOutlet var tfNome: UITextField!
    @IBOutlet var tfValor: UITextField!
    @IBOutlet var lbQuantidade: UILabel!
    @IBOutlet var stpQuantidade: UIStepper!
    
//    var stForm : String!
    
    var cadastro: Cadastro!
    
    @IBAction func quantidade(_ sender: Any) {
        let qtd = Int(self.stpQuantidade.value)
        self.lbQuantidade.text = String(qtd)
    }

    @IBAction func salvar(_ sender: Any) {
        let nome = self.tfNome.text
        let valor = Float(self.tfValor.text!)
        let qtd = Int(self.stpQuantidade.value)
        let bloco = Bloco(nome: nome!, valor: valor!, quantidade: qtd)

        print(bloco)
        self.cadastro.add(bloco: bloco)
        
        self.navigationController?.popViewController(animated: true)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print(segue.destination)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        print("View did load - Formulario")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
//        print("View will appear - Formulario")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
//        print("View did Appear - Formulario")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(true)
//        print("View will disappear - Formulario")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(true)
//        print("View did disappear - Formulario")
    }
    

}
