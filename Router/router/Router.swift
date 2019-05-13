//
//  Router.swift
//  Router
//
//  Created by Ufos on 13/05/2019.
//  Copyright © 2019 Panowie Programisci. All rights reserved.
//

import Foundation



enum Destination {
    case Login
    case Main(user: User?)
    case Profile(user: User?)
    case About
}

//

class Router: IRouter {
    
    //
    
    func navigate(to: Destination) {
        //
    }
    
    func back(to: Destination) {
        //
    }
    
    func back() {
        //
    }
    
    
}

//

protocol IRouter {
    
    func navigate(to: Destination)
    func back(to: Destination)
    func back()
    
}
