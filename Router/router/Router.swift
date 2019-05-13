//
//  Router.swift
//  Router
//
//  Created by Ufos on 13/05/2019.
//  Copyright © 2019 Panowie Programisci. All rights reserved.
//

import Foundation
import UIKit


/*
    You don't need to extend Router - you can implement IRouter
    Router has ready implementation for segues with data passing
    Other benefit is that you would not need to implement empty methods in your Router if you don't use them (see ProfileListRouter)
*/

class Router: IRouter {

    private weak var viewController: UIViewController?
    
    // data to pass by segue
    fileprivate var currentAction: SegueAction?
    
    //
    
    init(viewController: UIViewController?) {
        self.viewController = viewController
    }
    
    func navigate(to destination: Destination) {
        // to implement
    }
    
    func back(to destination: Destination) {
        // to implement
    }
    
    func back() {
        // to implement
    }
    
    //
    // Support for segues with data pass
    //
    
    func performSegueWithAction(identifier: String, withCompletion completion: @escaping ((_ destVc: UIViewController)->())) {
        self.currentAction = SegueAction(id: identifier, withAction: completion)
        viewController?.performSegue(withIdentifier: identifier, sender: viewController)
    }
    
    func handleSegue(segue: UIStoryboardSegue) {
        if let action = currentAction {
            if segue.identifier == action.id {
                currentAction?.action(segue.destination)
                currentAction = nil
            }
        }
    }
}


//
// Segue data pass helper
//

class SegueAction {
    fileprivate(set) var id: String
    fileprivate(set) var action: ((_ destVc: UIViewController)->())
    
    init(id: String, withAction action: @escaping ((_ destVc: UIViewController)->())) {
        self.id = id
        self.action = action
    }
}

