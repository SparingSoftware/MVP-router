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
    
    let currentUser = User(name: "Piotr")
    
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
        router?.navigate(to: .Main(user: currentUser))
    }
    
    func skipClicked() {
        router?.navigate(to: .Main(user: nil))
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

    //
    
}
