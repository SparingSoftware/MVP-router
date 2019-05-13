//
//  MainViewController.swift
//  Router
//
//  Created by Ufos on 13/05/2019.
//  Copyright © 2019 Panowie Programisci. All rights reserved.
//

import UIKit

class MainTabViewController: UITabBarController {
    
    // not-optional
    var loggedUser: User?
    
    
    //
    
    lazy var presenter: IMainPresenter =  {
        return MainPresenter(view: self, user: loggedUser)
    }()
    
    //
    // Lifecycle
    //
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        presenter.viewDidLoad()
    }
    
    @IBAction func exitClicked(_ sender: Any) {
        presenter.logoutClicked()
    }
    
    @IBAction func aboutClicked(_ sender: Any) {
        presenter.aboutClicked()
    }
    
    //

    //
    // Navigation
    //
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }

}


// ILoginView
extension MainTabViewController: IMainView {
    
    func showTitle(title: String) {
        self.navigationItem.title = title
    }
    
    func backToLogin() {
        self.navigationController?.dismiss(animated: true, completion: nil)
    }
    
    func showAbout() {
        self.performSegue(withIdentifier: "ShowAbout", sender: self)
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
