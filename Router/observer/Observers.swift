//
//  Observers.swift
//  Router
//
//  Created by Ufos on 13/05/2019.
//  Copyright © 2019 Panowie Programisci. All rights reserved.
//


import Foundation

//

enum EventType: String {
    
    case ShowMyProfileEvent = "ShowMyProfileEvent"

}

//


protocol IEventObserver {
    func publish(type: EventType, extraData: Any?)
    
    func subscribe(type: EventType, callback: @escaping (_ extraData: Any?)->())
    
    func dispose()
}


//

class EventObserver: IEventObserver {
    
    private var observers: [Any] = []
    
    func publish(type: EventType, extraData: Any? = nil) {
        let notificationName = NSNotification.Name(rawValue: type.rawValue)
        NotificationCenter.default.post(name: notificationName, object: extraData)
    }
    
    func subscribe(type: EventType, callback: @escaping (_ extraData: Any?)->()) {
        let notificationName = NSNotification.Name(rawValue: type.rawValue)
        let observer = NotificationCenter.default.addObserver(forName: notificationName, object: nil, queue: OperationQueue.main) { (notification) in
            callback(notification.object)
        }
        
        observers.append(observer)
    }
    
    func dispose() {
        observers.forEach { (observer) in
            NotificationCenter.default.removeObserver(observer)
        }
        observers.removeAll()
    }
}
