//
//  AboutRouter.swift
//  Router
//
//  Created by Ufos on 13/05/2019.
//  Copyright © 2019 Panowie Programisci. All rights reserved.
//

import Foundation
import UIKit

class AboutRouter: IRouter {
    
    private weak var viewController: UIViewController?
    
    init(viewController: UIViewController?) {
        self.viewController = viewController
    }
    
    func navigate(to destination: Destination) {
        switch destination {

            
        default:
            break
        }
    }
    
    func back(to destination: Destination) {
        switch destination {
        case .Login:
            viewController?.performSegue(withIdentifier: "BackToLogin", sender: self)
        break
            
        default:
            break
        }
    }
    
    func back() {
        viewController?.navigationController?.dismiss(animated: true, completion: nil)
    }
    
    func handleSegue(segue: UIStoryboardSegue) {
        //
    }
    
}
