//
//  ProfileViewController.swift
//  Router
//
//  Created by Ufos on 13/05/2019.
//  Copyright © 2019 Panowie Programisci. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {

    
    // if nil - we are not logged in
    var user: User?
    
    //
    
    @IBOutlet weak var userLabel: UILabel!
    @IBOutlet weak var userImageView: UIImageView!
    
    //
    
    lazy var presenter: IProfilePresenter = {
        return ProfilePresenter(
            view: self,
            user: user
        )
    }()
    
    
    //
    // Lifecycle
    //
    
    override func viewDidLoad() {
        super.viewDidLoad()

        presenter.viewDidLoad()
    }
}

//

extension ProfileViewController: IProfileView {
 
    func setUserName(name: String) {
        self.userLabel.text = name
    }
    
    func enableProfileView(show: Bool) {
        self.userImageView.isHidden = !show
    }
    
}
