//
//  LoginRouter.swift
//  Router
//
//  Created by Ufos on 13/05/2019.
//  Copyright © 2019 Panowie Programisci. All rights reserved.
//

import Foundation
import UIKit

class LoginRouter: IRouter {
    
    private weak var viewController: UIViewController?
    
    init(viewController: UIViewController?) {
        self.viewController = viewController
    }
    
    func navigate(to destination: Destination) {
        switch destination {
        case .Main(let user):
            let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
            if let nav = storyboard.instantiateViewController(withIdentifier: "MainTabNav") as? UINavigationController {
                if let vc = nav.children.first as? MainTabViewController {
                    vc.loggedUser = user
                    viewController?.present(nav, animated: true, completion: nil)
                }
            }
        break
            
        default: break
        }
    }
    
    func back(to destination: Destination) {
        //
    }
    
    func back() {
        //
    }
    
    func handleSegue(segue: UIStoryboardSegue) {
        //
    }
    
}
