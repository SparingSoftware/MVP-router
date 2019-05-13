//
//  ListRouter.swift
//  Router
//
//  Created by Ufos on 13/05/2019.
//  Copyright © 2019 Panowie Programisci. All rights reserved.
//

import Foundation
import UIKit

/*
    We extend Router not IRouter because we need segues with data pass
*/

class ProfileListRouter: Router {

    override func navigate(to destination: Destination) {
        switch destination {
        case .Profile(let user):
            performSegueWithAction(identifier: "ShowProfile") { (destVc) in
                (destVc as? ProfileViewController)?.user = user
            }
        break
            
        default:
            break
        }
    }
    
}
