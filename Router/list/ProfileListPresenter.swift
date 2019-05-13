//
//  ProfileListPresenter.swift
//  Router
//
//  Created by Ufos on 13/05/2019.
//  Copyright © 2019 Panowie Programisci. All rights reserved.
//

import Foundation

class ProfileListPresenter: IProfileListPresenter {
    
    private weak var view: IProfileListView?
    private var router: IRouter?
    
    //
    
    init(
        view: IProfileListView?,
        router: IRouter
    ) {
        self.view = view
        self.router = router
    }
    
    //
    // Lifecycle
    //
    
    func viewDidLoad() {
        view?.setupViews()
    }
    
    //
    // Actions
    //
    
    func profileClickedAt(pos: Int) {
        router?.navigate(to: .Profile(user: profileAt(pos: pos)))
        view?.showProfile(profile: profileAt(pos: pos))
    }

    //
    // Data
    //
    
    let profiles = [
        User(name: "Jan"),
        User(name: "Kuba"),
        User(name: "Ania"),
    ]
    
    func numberOfProfiles() -> Int {
        return profiles.count
    }
    
    func profileAt(pos: Int) -> User {
        return profiles[pos]
    }
    
}



//


protocol IProfileListPresenter {
    
    // Lifecycle
    func viewDidLoad()
    
    //
    func numberOfProfiles() -> Int
    func profileAt(pos: Int) -> User
    
    func profileClickedAt(pos: Int)
    
    
}

//

protocol IProfileListView: class {

    func setupViews()
    func showProfile(profile: User)
    
}
