//
//  AboutViewController.swift
//  Router
//
//  Created by Ufos on 13/05/2019.
//  Copyright © 2019 Panowie Programisci. All rights reserved.
//

import UIKit

class AboutViewController: UIViewController {

    lazy var presenter: IAboutPresenter = {
       return AboutPresenter(
            view: self,
            router: AboutRouter(viewController: self)
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
    
    @IBAction func logoutClicked(_ sender: Any) {
        presenter.logoutClicked()
    }
    
    @IBAction func exitClicked(_ sender: Any) {
        presenter.exitClicked()
    }

}

//

extension AboutViewController: IAboutView {

    //
    
}
