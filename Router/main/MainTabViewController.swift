//
//  MainViewController.swift
//  Router
//
//  Created by Ufos on 13/05/2019.
//  Copyright © 2019 Panowie Programisci. All rights reserved.
//

import UIKit

class MainTabViewController: UITabBarController {
    
    var loggedUser: User?
    
    //
    
    lazy var presenter: IMainPresenter =  {
        return MainPresenter(
            view: self,
            user: loggedUser,
            router: MainTabRouter(viewController: self),
            eventObserver: EventObserver()
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
    
    @IBAction func exitClicked(_ sender: Any) {
        presenter.logoutClicked()
    }
    
    @IBAction func aboutClicked(_ sender: Any) {
        presenter.aboutClicked()
    }

}


// ILoginView
extension MainTabViewController: IMainView {
    
    func showTitle(title: String) {
        self.navigationItem.title = title
    }
    
    func setupViews() {
        // pass user to Profile Tab
        self.children.forEach { (vc) in
            if let profileVc = vc as? ProfileViewController {
                profileVc.user = self.loggedUser
            }
        }
    }
}
