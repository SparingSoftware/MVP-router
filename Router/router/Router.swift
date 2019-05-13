//
//  Router.swift
//  Router
//
//  Created by Ufos on 13/05/2019.
//  Copyright © 2019 Panowie Programisci. All rights reserved.
//

import Foundation





class Router: IRouter {
    
    enum Destination {
        
    }
    
    //
    
    func navigate(to: Router.Destination) {
        //
    }
    
    func back(to: Router.Destination) {
        //
    }
    
    func back() {
        //
    }
    
    
}

//

protocol IRouter {
    
    func navigate(to: Router.Destination)
    func back(to: Router.Destination)
    func back()
    
}
