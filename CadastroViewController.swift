//
//  CadastroViewController.swift
//  HelloFirebase
//
//  Created by Aluno R17 on 06/06/2019.
//  Copyright © 2019 Daniel Valente. All rights reserved.
//

import UIKit
import Firebase
class CadastroViewController: UIViewController {

    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var senha: UITextField!
    @IBOutlet weak var senhaconfirma: UITextField!
    
    func exibirMensagem(titulo:String, mensagem:String){
        let alerta = UIAlertController(title: titulo, message: mensagem, preferredStyle: .alert)
        let acaoCancelar = UIAlertAction(title: "Cancelar", style:.cancel, 	handler: nil)
        alerta.addAction(acaoCancelar)
        present(alerta, animated: true, completion: nil)
    }
    @IBAction func criarconta(_ sender: Any) {
        //Recuperar dados
        if let emailR =	self.email.text{
            if let senhaR = self.senha.text{
                if let senhaconfirmarR = self.senhaconfirma.text{
                    //validar
                    if senhaR == senhaconfirmarR{
                        //criando a conta no firebase
                        let autenticacao = Auth.auth()
                        autenticacao.createUser(withEmail: emailR, password: senhaR) { (usuario, erro) in
                            if erro == nil{
                                if usuario == nil {
                                    self.exibirMensagem(titulo: "usuario invalido", mensagem: "Problema ao realizar autenticacao")
                                }else{
                                     self.performSegue(withIdentifier: "cadastrosegue", sender: nil)
                                }
                            }else{
                                let erroR = erro! as NSError
                                print(erroR.userInfo["erro_name"])
                                
                            }
                        }
                    }else{
                        self.exibirMensagem(titulo: "Dados incorretos", mensagem: "As senhas nao estao iguais")
                    }/*fim validacao senha */
                }
            }
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    //Setando a barra de navegacao como false para nao exibir
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(false, animated: false    )
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
