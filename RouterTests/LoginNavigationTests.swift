//
//  LoginNavigationTests.swift
//  RouterTests
//
//  Created by Ufos on 16/05/2019.
//  Copyright © 2019 Panowie Programisci. All rights reserved.
//

import XCTest
import Foundation
import Cuckoo
@testable import Router


class LoginNavigationTests: XCTestCase {

    let view = MockILoginView()
        .withEnabledDefaultImplementation(ILoginViewStub())
    
    let router = MockIRouter()
        .withEnabledDefaultImplementation(IRouterStub())
    
    var presenter: LoginPresenter!
    
    override func setUp() {
         presenter = LoginPresenter(view: view, router: router)
    }

    //
    
    func test_login() {
        presenter.loginClicked()
        
        verify(router).navigate(to: equalDestination(to: .Main(user: User(name: "Piotr"))))
    }

    func test_skip() {
        presenter.skipClicked()
        
        verify(router).navigate(to: equalDestination(to: .Main(user: nil)))
    }

}
