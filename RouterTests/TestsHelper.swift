//
//  TestsHelper.swift
//  RouterTests
//
//  Created by Ufos on 16/05/2019.
//  Copyright © 2019 Panowie Programisci. All rights reserved.
//

import Foundation
import Cuckoo
@testable import Router

func equalDestination(to value: Destination) -> ParameterMatcher<Destination> {
    return ParameterMatcher { tested in
        switch (value) {
        case .Login:
            if case .Login = tested {
                return true
            }
            
        case .About:
            if case .About = tested {
                return true
            }
            
        case .Main(let user_):
            if case let .Main(user) = tested {
                return user?.name == user_?.name
            }
            
        case .MyProfile:
            if case .MyProfile = tested {
                return true
            }

        case .Profile(let user_):
            if case let .Profile(user) = tested {
                return user?.name == user_?.name
            }
        }
        
        return false
    }
}

//
