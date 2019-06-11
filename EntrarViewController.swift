//
//  EntrarViewController.swift
//  HelloFirebase
//
//  Created by Aluno R17 on 06/06/2019.
//  Copyright © 2019 Daniel Valente. All rights reserved.
//

import UIKit
import FirebaseAuth
class EntrarViewController: UIViewController {

    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var senha: UITextField!
    func exibirMensagem(titulo:String, mensagem:String){
        let alerta = UIAlertController(title: titulo, message: mensagem, preferredStyle: .alert)
        let acaoCancelar = UIAlertAction(title: "Cancelar", style:.cancel,     handler: nil)
        alerta.addAction(acaoCancelar)
        present(alerta, animated: true, completion: nil)
    }
    
    @IBAction func entrar(_ sender: Any) {
        if let emailR = self.email.text{
            if let senhaR = self.senha.text{
                //autenticar usuario
                let autenticacao = Auth.auth()
                autenticacao.signIn(withEmail: emailR, password: senhaR, completion:{ (usuario,erro) in
                    if erro == nil {
                            self.exibirMensagem(titulo:"Erro ao autenticar", mensagem:"Problema ao realizar autenticacao, tente novamente")
                    }else{
                       self.performSegue(withIdentifier: "loginsegue", sender: nil)
                        
                    }
                    
                })
            }
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(false, animated: false    )
    }	    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
