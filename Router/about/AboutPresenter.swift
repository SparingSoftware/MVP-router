//
//  AboutPresenter.swift
//  Router
//
//  Created by Ufos on 13/05/2019.
//  Copyright © 2019 Panowie Programisci. All rights reserved.
//

import Foundation

class AboutPresenter: IAboutPresenter {
    
    private weak var view: IAboutView?
    private var router: IRouter?
    
    //
    
    init(
        view: IAboutView?,
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
    
    func logoutClicked() {
        router?.back(to: .Login)
    }
    
    func exitClicked() {
        router?.back()
    }
    
    
}



//


protocol IAboutPresenter {
    
    // Lifecycle
    func viewDidLoad()
    
    //
    func logoutClicked()
    func exitClicked()
    
    
}

//

protocol IAboutView: class {

    //
    
}
