//
//  ViewController.swift
//  Carnaval
//
//  Created by admin on 24/02/17.
//  Copyright © 2017 Joffily. All rights reserved.
//

import UIKit

class PrincipalViewController: UIViewController {

    @IBOutlet weak var qtdePrincipal: UILabel!
    var cadastro = Cadastro()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        print("View did Load - Principal")
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
//        print("View will appear - Principal")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
//        print("View did Appear - Principal")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(true)
//        print("View will disappear - Principal")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(true)
//        print("View did disappear - Principal")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        print("Segue \(segue.identifier)")
        
        if(segue.identifier == "principal_sobre"){
            let sobreVC = segue.destination as! SobreViewController
            sobreVC.cadastro = self.cadastro
        }else if(segue.identifier == "principal_formulario"){
            let formVC  = segue.destination as! FormularioViewController
            formVC.cadastro = self.cadastro
        }
    }
    
}

