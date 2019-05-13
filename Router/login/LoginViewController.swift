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
        return LoginPresenter(view: self, router: Router())
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
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //
    }
    
    // back to this screen
    @IBAction func unwindToLogin(segue: UIStoryboardSegue) { }

}

// ILoginView
extension LoginViewController: ILoginView {
    
    func showMainScreen(user: User?) {
        // use storyboard init
        let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
        if let nav = storyboard.instantiateViewController(withIdentifier: "MainTabNav") as? UINavigationController {
            if let vc = nav.children.first as? MainTabViewController {
                vc.loggedUser = user
                self.present(nav, animated: true, completion: nil)
            }
        }
    }
    
}
