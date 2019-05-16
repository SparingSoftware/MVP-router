// MARK: - Mocks generated from file: Router/login/LoginPresenter.swift at 2019-05-16 15:04:01 +0000

//
//  LoginPresenter.swift
//  Router
//
//  Created by Ufos on 13/05/2019.
//  Copyright © 2019 Panowie Programisci. All rights reserved.
//

import Cuckoo
@testable import Router

import Foundation


 class MockILoginPresenter: ILoginPresenter, Cuckoo.ProtocolMock {
     typealias MocksType = ILoginPresenter
     typealias Stubbing = __StubbingProxy_ILoginPresenter
     typealias Verification = __VerificationProxy_ILoginPresenter

    private var __defaultImplStub: ILoginPresenter?

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

     func enableDefaultImplementation(_ stub: ILoginPresenter) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }

    

    

    
    
    
     func viewDidLoad()  {
        
            return cuckoo_manager.call("viewDidLoad()",
                parameters: (),
                escapingParameters: (),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.viewDidLoad())
        
    }
    
    
    
     func loginClicked()  {
        
            return cuckoo_manager.call("loginClicked()",
                parameters: (),
                escapingParameters: (),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.loginClicked())
        
    }
    
    
    
     func skipClicked()  {
        
            return cuckoo_manager.call("skipClicked()",
                parameters: (),
                escapingParameters: (),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.skipClicked())
        
    }
    

	 struct __StubbingProxy_ILoginPresenter: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func viewDidLoad() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockILoginPresenter.self, method: "viewDidLoad()", parameterMatchers: matchers))
	    }
	    
	    func loginClicked() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockILoginPresenter.self, method: "loginClicked()", parameterMatchers: matchers))
	    }
	    
	    func skipClicked() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockILoginPresenter.self, method: "skipClicked()", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_ILoginPresenter: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func viewDidLoad() -> Cuckoo.__DoNotUse<Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("viewDidLoad()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func loginClicked() -> Cuckoo.__DoNotUse<Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("loginClicked()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func skipClicked() -> Cuckoo.__DoNotUse<Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("skipClicked()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}

}

 class ILoginPresenterStub: ILoginPresenter {
    

    

    
     func viewDidLoad()  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     func loginClicked()  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     func skipClicked()  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
}



 class MockILoginView: ILoginView, Cuckoo.ProtocolMock {
     typealias MocksType = ILoginView
     typealias Stubbing = __StubbingProxy_ILoginView
     typealias Verification = __VerificationProxy_ILoginView

    private var __defaultImplStub: ILoginView?

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

     func enableDefaultImplementation(_ stub: ILoginView) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }

    

    

    

	 struct __StubbingProxy_ILoginView: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	}

	 struct __VerificationProxy_ILoginView: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	}

}

 class ILoginViewStub: ILoginView {
    

    

    
}


// MARK: - Mocks generated from file: Router/main/MainPresenter.swift at 2019-05-16 15:04:01 +0000

//
//  MainPresenter.swift
//  Router
//
//  Created by Ufos on 13/05/2019.
//  Copyright © 2019 Panowie Programisci. All rights reserved.
//

import Cuckoo
@testable import Router

import Foundation


 class MockIMainPresenter: IMainPresenter, Cuckoo.ProtocolMock {
     typealias MocksType = IMainPresenter
     typealias Stubbing = __StubbingProxy_IMainPresenter
     typealias Verification = __VerificationProxy_IMainPresenter

    private var __defaultImplStub: IMainPresenter?

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

     func enableDefaultImplementation(_ stub: IMainPresenter) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }

    

    

    
    
    
     func viewDidLoad()  {
        
            return cuckoo_manager.call("viewDidLoad()",
                parameters: (),
                escapingParameters: (),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.viewDidLoad())
        
    }
    
    
    
     func logoutClicked()  {
        
            return cuckoo_manager.call("logoutClicked()",
                parameters: (),
                escapingParameters: (),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.logoutClicked())
        
    }
    
    
    
     func aboutClicked()  {
        
            return cuckoo_manager.call("aboutClicked()",
                parameters: (),
                escapingParameters: (),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.aboutClicked())
        
    }
    

	 struct __StubbingProxy_IMainPresenter: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func viewDidLoad() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockIMainPresenter.self, method: "viewDidLoad()", parameterMatchers: matchers))
	    }
	    
	    func logoutClicked() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockIMainPresenter.self, method: "logoutClicked()", parameterMatchers: matchers))
	    }
	    
	    func aboutClicked() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockIMainPresenter.self, method: "aboutClicked()", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_IMainPresenter: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func viewDidLoad() -> Cuckoo.__DoNotUse<Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("viewDidLoad()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func logoutClicked() -> Cuckoo.__DoNotUse<Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("logoutClicked()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func aboutClicked() -> Cuckoo.__DoNotUse<Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("aboutClicked()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}

}

 class IMainPresenterStub: IMainPresenter {
    

    

    
     func viewDidLoad()  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     func logoutClicked()  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     func aboutClicked()  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
}



 class MockIMainView: IMainView, Cuckoo.ProtocolMock {
     typealias MocksType = IMainView
     typealias Stubbing = __StubbingProxy_IMainView
     typealias Verification = __VerificationProxy_IMainView

    private var __defaultImplStub: IMainView?

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

     func enableDefaultImplementation(_ stub: IMainView) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }

    

    

    
    
    
     func setupViews()  {
        
            return cuckoo_manager.call("setupViews()",
                parameters: (),
                escapingParameters: (),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.setupViews())
        
    }
    
    
    
     func showTitle(title: String)  {
        
            return cuckoo_manager.call("showTitle(title: String)",
                parameters: (title),
                escapingParameters: (title),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.showTitle(title: title))
        
    }
    

	 struct __StubbingProxy_IMainView: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func setupViews() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockIMainView.self, method: "setupViews()", parameterMatchers: matchers))
	    }
	    
	    func showTitle<M1: Cuckoo.Matchable>(title: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(String)> where M1.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: title) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockIMainView.self, method: "showTitle(title: String)", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_IMainView: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func setupViews() -> Cuckoo.__DoNotUse<Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("setupViews()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func showTitle<M1: Cuckoo.Matchable>(title: M1) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: title) { $0 }]
	        return cuckoo_manager.verify("showTitle(title: String)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}

}

 class IMainViewStub: IMainView {
    

    

    
     func setupViews()  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     func showTitle(title: String)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
}


// MARK: - Mocks generated from file: Router/router/IRouter.swift at 2019-05-16 15:04:01 +0000

//
//  IRouter.swift
//  Router
//
//  Created by Ufos on 13/05/2019.
//  Copyright © 2019 Panowie Programisci. All rights reserved.
//

import Cuckoo
@testable import Router

import Foundation
import UIKit


 class MockIRouter: IRouter, Cuckoo.ProtocolMock {
     typealias MocksType = IRouter
     typealias Stubbing = __StubbingProxy_IRouter
     typealias Verification = __VerificationProxy_IRouter

    private var __defaultImplStub: IRouter?

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

     func enableDefaultImplementation(_ stub: IRouter) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }

    

    

    
    
    
     func navigate(to destination: Destination)  {
        
            return cuckoo_manager.call("navigate(to: Destination)",
                parameters: (destination),
                escapingParameters: (destination),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.navigate(to: destination))
        
    }
    
    
    
     func back(to destination: Destination)  {
        
            return cuckoo_manager.call("back(to: Destination)",
                parameters: (destination),
                escapingParameters: (destination),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.back(to: destination))
        
    }
    
    
    
     func back()  {
        
            return cuckoo_manager.call("back()",
                parameters: (),
                escapingParameters: (),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.back())
        
    }
    
    
    
     func handleSegue(segue: UIStoryboardSegue)  {
        
            return cuckoo_manager.call("handleSegue(segue: UIStoryboardSegue)",
                parameters: (segue),
                escapingParameters: (segue),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.handleSegue(segue: segue))
        
    }
    

	 struct __StubbingProxy_IRouter: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func navigate<M1: Cuckoo.Matchable>(to destination: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(Destination)> where M1.MatchedType == Destination {
	        let matchers: [Cuckoo.ParameterMatcher<(Destination)>] = [wrap(matchable: destination) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockIRouter.self, method: "navigate(to: Destination)", parameterMatchers: matchers))
	    }
	    
	    func back<M1: Cuckoo.Matchable>(to destination: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(Destination)> where M1.MatchedType == Destination {
	        let matchers: [Cuckoo.ParameterMatcher<(Destination)>] = [wrap(matchable: destination) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockIRouter.self, method: "back(to: Destination)", parameterMatchers: matchers))
	    }
	    
	    func back() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockIRouter.self, method: "back()", parameterMatchers: matchers))
	    }
	    
	    func handleSegue<M1: Cuckoo.Matchable>(segue: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(UIStoryboardSegue)> where M1.MatchedType == UIStoryboardSegue {
	        let matchers: [Cuckoo.ParameterMatcher<(UIStoryboardSegue)>] = [wrap(matchable: segue) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockIRouter.self, method: "handleSegue(segue: UIStoryboardSegue)", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_IRouter: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func navigate<M1: Cuckoo.Matchable>(to destination: M1) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == Destination {
	        let matchers: [Cuckoo.ParameterMatcher<(Destination)>] = [wrap(matchable: destination) { $0 }]
	        return cuckoo_manager.verify("navigate(to: Destination)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func back<M1: Cuckoo.Matchable>(to destination: M1) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == Destination {
	        let matchers: [Cuckoo.ParameterMatcher<(Destination)>] = [wrap(matchable: destination) { $0 }]
	        return cuckoo_manager.verify("back(to: Destination)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func back() -> Cuckoo.__DoNotUse<Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("back()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func handleSegue<M1: Cuckoo.Matchable>(segue: M1) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == UIStoryboardSegue {
	        let matchers: [Cuckoo.ParameterMatcher<(UIStoryboardSegue)>] = [wrap(matchable: segue) { $0 }]
	        return cuckoo_manager.verify("handleSegue(segue: UIStoryboardSegue)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}

}

 class IRouterStub: IRouter {
    

    

    
     func navigate(to destination: Destination)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     func back(to destination: Destination)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     func back()  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     func handleSegue(segue: UIStoryboardSegue)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
}

