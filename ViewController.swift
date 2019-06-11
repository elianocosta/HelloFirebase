//
//  ViewController.swift
//  HelloFirebase
//
//  Created by Daniel Valente on 16/05/19.
//  Copyright © 2019 Daniel Valente. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //let autenticacao = Auth.auth()
        //autenticacao.addStateDidChangeListener { ( autenticacao ,usuario)} in
        
        let autenticacao = Auth.auth().addStateDidChangeListener { (auth, user) in
            if let usuarioLogado = user{
                self.performSegue(withIdentifier: "loginautomatico", sender: nil)
            }
        }
        
        /*if let usuarioLogado = usuario {
            self.performSegue(withIdentifier:"principalsegue",sender:Any?)
        }*/
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(true, animated: false	)
    }

}

