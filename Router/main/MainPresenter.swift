//
//  MainPresenter.swift
//  Router
//
//  Created by Ufos on 13/05/2019.
//  Copyright © 2019 Panowie Programisci. All rights reserved.
//

import Foundation


class MainPresenter: IMainPresenter {
    
    private weak var view: IMainView?
    
    private var user: User?
    private var router: IRouter?
    private var eventObserver: IEventObserver?
    
    //
    
    init(
        view: IMainView?,
        user: User?,
        router: IRouter,
        eventObserver: IEventObserver
    ) {
        self.view = view
        self.user = user
        self.router = router
        self.eventObserver = eventObserver
    }
    
    //
    // Lifecycle
    //
    
    func viewDidLoad() {
        view?.setupViews()
        
        if let user = self.user {
            view?.showTitle(title: "Hello \(user.name)")
        } else {
            view?.showTitle(title: "Hello Anonymous!")
        }
        
        bindObservers()
    }
    
    deinit {
        eventObserver?.dispose()
    }
    
    //
    // Actions
    //
    
    func logoutClicked() {
        router?.back(to: .Login)
    }
    
    func aboutClicked() {
        router?.navigate(to: .About)
    }
    
    
    //
    // Private
    //
    
    private func bindObservers() {
        eventObserver?.subscribe(type: .ShowMyProfileEvent) { [weak self] (data) in
            self?.router?.navigate(to: .MyProfile)
        }
    }
}



//


protocol IMainPresenter {
    
    // Lifecycle
    func viewDidLoad()
    
    //
    func logoutClicked()
    func aboutClicked()

    
}

//

protocol IMainView: class {
    
    func setupViews()
    func showTitle(title: String)
    
}
