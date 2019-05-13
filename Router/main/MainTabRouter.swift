//
//  MainTabRouter.swift
//  Router
//
//  Created by Ufos on 13/05/2019.
//  Copyright © 2019 Panowie Programisci. All rights reserved.
//

import Foundation
import UIKit

class MainTabRouter: IRouter {
    
    private weak var viewController: MainTabViewController?
    
    init(viewController: MainTabViewController?) {
        self.viewController = viewController
    }
    
    func navigate(to destination: Destination) {
        switch destination {
        case .About:
            viewController?.performSegue(withIdentifier: "ShowAbout", sender: viewController)
        break
            
        case .MyProfile:
            viewController?.selectedIndex = 1
        break
            
        default:
            break
        }
    }
    
    func back(to destination: Destination) {
        switch destination {
        case .Login:
            viewController?.navigationController?.dismiss(animated: true, completion: nil)
        break
            
        default:
            break
        }
    }
    
    func back() {
        //
    }
    
    func handleSegue(segue: UIStoryboardSegue) {
        //
    }
    
}
