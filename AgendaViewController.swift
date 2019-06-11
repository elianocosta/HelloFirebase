//
//  AgendaViewController.swift
//  HelloFirebase
//
//  Created by Aluno R17 on 10/06/2019.
//  Copyright © 2019 Daniel Valente. All rights reserved.
//

import UIKit
import FirebaseAuth

class AgendaViewController: UIViewController {

    @IBAction func sair(_ sender: Any) {
        let autenticacao = Auth.auth()
        do {
            try autenticacao.signOut()
            dismiss(animated: true, completion: nil)
        }catch{
            print("erro ao deslogar")
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }  

   
    

}
