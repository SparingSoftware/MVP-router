//
//  IRouter.swift
//  Router
//
//  Created by Ufos on 13/05/2019.
//  Copyright © 2019 Panowie Programisci. All rights reserved.
//

import Foundation
import UIKit


//
// App's Destinations
//

enum Destination {
    case Login
    case Main(user: User?)
    case MyProfile
    case Profile(user: User?)
    case About
}


//

/*
    Why I? Because.. I used to do it. Perhaps it is against Swift Protocol naming conventions but..
    I just like it. It's easy for me to see that everything is "behind inteface". That's all ;)
*/

protocol IRouter {
    
    func navigate(to destination: Destination)
    func back(to destination: Destination)
    func back()
    
    // this uses UIKit :/
    func handleSegue(segue: UIStoryboardSegue)
    
}


