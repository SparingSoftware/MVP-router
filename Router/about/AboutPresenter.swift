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
    
    //
    
    init(
        view: IAboutView?
        ) {
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
    
    func logoutClicked() {
        view?.backToLogin()
    }
    
    func exitClicked() {
        view?.close()
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

    func backToLogin()
    func close()
    
}
