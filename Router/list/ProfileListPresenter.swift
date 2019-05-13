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
    private var eventObserver: IEventObserver
    
    //
    
    init(
        view: IProfileListView?,
        router: IRouter,
        eventObserver: IEventObserver
    ) {
        self.view = view
        self.router = router
        self.eventObserver = eventObserver
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
    }

    func myProfileClicked() {
        // more convenient than to use callback's
        eventObserver.publish(type: .ShowMyProfileEvent)
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
    func myProfileClicked()
    
    
}

//

protocol IProfileListView: class {

    func setupViews()
    
}
