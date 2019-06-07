//
//  CadastroViewController.swift
//  HelloFirebase
//
//  Created by Aluno R17 on 06/06/2019.
//  Copyright © 2019 Daniel Valente. All rights reserved.
//

import UIKit

class CadastroViewController: UIViewController {

    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var senha: UITextField!
    @IBOutlet weak var senhaconfirma: UITextField!
    @IBAction func criarconta(_ sender: Any) {
        //Recuperar dados
        if let emailR =	self.email.text{
            if let senhaR = self.senha.text{
                if let senhaconfirmarR = self.senhaconfirma.text{
                    //validar
                    if senhaR == senhaconfirmarR{
                        print("senhas iguais podemos seguir")
                    }else{
                        print("senhas diferentes tente novamente")
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
