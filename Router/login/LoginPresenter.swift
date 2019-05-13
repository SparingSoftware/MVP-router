//
//  LoginPresenter.swift
//  Router
//
//  Created by Ufos on 13/05/2019.
//  Copyright © 2019 Panowie Programisci. All rights reserved.
//

import Foundation


class LoginPresenter: ILoginPresenter {

    private weak var view: ILoginView?

    //
    
    init(view: ILoginView?) {
        self.view = view
    }
    
    //
    // Lifecycle
    //
    
    func viewDidLoad() {
        //
    }
    
    //
    // Actions
    //
    
    func loginClicked() {
        view?.showMainScreen(user: User(name: "Piotr"))
    }
    
    func skipClicked() {
        view?.showMainScreen(user: nil)
    }
    
}



//


protocol ILoginPresenter {
    
    // Lifecycle
    func viewDidLoad()
    
    //
    func loginClicked()
    func skipClicked()

    
}

//

protocol ILoginView: class {

    func showMainScreen(user: User?)
    
}
