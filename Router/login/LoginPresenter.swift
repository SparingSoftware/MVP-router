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
    private var router: IRouter?

    //
    
    init(
        view: ILoginView?,
        router: IRouter
    ) {
        self.view = view
        self.router = router
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
        // navigate(to: .Main(user: User(name: "Piotr")))
        view?.showMainScreen(user: User(name: "Piotr"))
    }
    
    func skipClicked() {
        // navigate(to: .Main(user: nil))
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
