//
//  SobreViewController.swift
//  Carnaval
//
//  Created by admin on 24/02/17.
//  Copyright © 2017 Joffily. All rights reserved.
//

import UIKit

class SobreViewController: UIViewController {


    @IBOutlet var lbQuantidade: UILabel!
//    var stSobre: String!
    var cadastro: Cadastro!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        print("View did load - Sobre")
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
//        print("View will appear - Sobre")
        
//        self.lbQuantidade.text = "Funfou"
        self.lbQuantidade.text = String(self.cadastro.quantidade())
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
//        print("View did Appear - Sobre")
//        self.lbQuantidade.text = self.stSobre
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(true)
//        print("View will disappear - Sobre")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(true)
//        print("View did disappear - Sobre")
    }    
}
