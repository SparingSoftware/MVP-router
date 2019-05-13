//
//  LoginViewController.swift
//  Router
//
//  Created by Ufos on 13/05/2019.
//  Copyright © 2019 Panowie Programisci. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    private lazy var presenter: ILoginPresenter =  { [weak self] in
        return LoginPresenter(
            view: self,
            router: LoginRouter(viewController: self)
        )
    }()
    
    //
    // Lifecycle
    //
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        presenter.viewDidLoad()
    }
    
    //
    // Actions
    //
    
    @IBAction func logInClicked(_ sender: Any) {
        presenter.loginClicked()
    }
    
    @IBAction func skipClicked(_ sender: Any) {
        presenter.skipClicked()
    }
    
    //
    // Navigation
    //
    
    // back to this screen
    @IBAction func unwindToLogin(segue: UIStoryboardSegue) { }

}

// ILoginView
extension LoginViewController: ILoginView {
    
    //
    
}
