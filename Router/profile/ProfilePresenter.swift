//
//  ProfilePresenter.swift
//  Router
//
//  Created by Ufos on 13/05/2019.
//  Copyright © 2019 Panowie Programisci. All rights reserved.
//

import Foundation

class ProfilePresenter: IProfilePresenter {

    
    //
    
    private weak var view: IProfileView?
    private var user: User?
    
    //
    
    init(
        view: IProfileView?,
        user: User?
    ) {
        self.view = view
        self.user = user
    }
    
    //
    // Lifecycle
    //
    
    func viewDidLoad() {
        if let user = self.user {
            view?.setUserName(name: user.name)
            view?.enableProfileView(show: true)
        } else {
            view?.setUserName(name: "You are not logged in!")
            view?.enableProfileView(show: false)
        }
        
    }
    
    //
    // Actions
    //
    

    
}



//


protocol IProfilePresenter {
    
    // Lifecycle
    func viewDidLoad()
    
    //

    
    
}

//

protocol IProfileView: class {

    func setUserName(name: String)
    func enableProfileView(show: Bool)
    
}
