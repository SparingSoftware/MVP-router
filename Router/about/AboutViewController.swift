//
//  AboutViewController.swift
//  Router
//
//  Created by Ufos on 13/05/2019.
//  Copyright © 2019 Panowie Programisci. All rights reserved.
//

import UIKit

class AboutViewController: UIViewController {

    
    //
    
    lazy var presenter: IAboutPresenter = {
       return AboutPresenter(view: self, router: Router())
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
    
    @IBAction func logoutClicked(_ sender: Any) {
        presenter.logoutClicked()
    }
    
    @IBAction func exitClicked(_ sender: Any) {
        presenter.exitClicked()
    }
    
    //
    // Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //
    }

}

//

extension AboutViewController: IAboutView {
    
    func backToLogin() {
        self.performSegue(withIdentifier: "BackToLogin", sender: self)
    }
    
    func close() {
        self.navigationController?.dismiss(animated: true, completion: nil)
    }
    
}
