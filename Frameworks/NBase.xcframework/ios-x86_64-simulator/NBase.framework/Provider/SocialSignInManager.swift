//
//  SocialSignInManager.swift
//  NBase
//
//  Created by Kong Shinbae on 1/6/24.
//

import Foundation
import UIKit

class SocialSignInManager {
    private var googleProvider: GoogleSignInProvider
    private var facebookProvider: FacebookSignInProvider
    private var anonymousProvider: AnonymousSignInProvider
    private var appleProvider: AppleSignInProvider
    
    init() {
        self.googleProvider = GoogleSignInProvider()
        self.facebookProvider = FacebookSignInProvider()
        self.appleProvider = AppleSignInProvider()
        self.anonymousProvider = AnonymousSignInProvider()
    }
    func isFrameworkAvailable(serviceType: SignInServiceType) -> Bool {
        return true;
//        if isFrameworkAvailable("FrameworkClassName") {
//            print("The framework is properly integrated!")
//            return true
//        } else {
//            print("The framework is not available.")
//            return fasle
//        }
    }
    func signIn(serviceType: SignInServiceType, completionHandler:  @escaping (NBaseResult<Any?, NBaseError>) -> Void) {
     
        if(isFrameworkAvailable(serviceType: serviceType)) {
            
        }
        switch serviceType {
        case .google:
            googleProvider.signIn(completionHandler:completionHandler )
        case .facebook:
            facebookProvider.signIn(completionHandler:completionHandler )
        case .anonymous:
            anonymousProvider.signIn(completionHandler: completionHandler )
        case .apple: 
            appleProvider.signIn(completionHandler: completionHandler )
        case .kakao: break;
        case .naver: break;
        case .line: break;
        case .x: break;
        case .huawei: break;
        case .github: break;
        case .microsoft: break;
        case .playgame : break;
        case .amazon: break;
        case .gamecenter: break;
        case .unknown: break;
        }
    }
    
    func signOut(serviceType: SignInServiceType, completionHandler:  @escaping (NBaseResult<Any?, NBaseError>) -> Void) {
        if(isFrameworkAvailable(serviceType: serviceType)) {
            
        }
        switch serviceType {
        case .google:
            googleProvider.signOut(completionHandler:completionHandler )
        case .facebook:
            facebookProvider.signOut(completionHandler:completionHandler )
        case .anonymous:
            anonymousProvider.signOut(completionHandler: completionHandler)
        case .apple: break;
        case .kakao: break;
        case .naver: break;
        case .line: break;
        case .x: break;
        case .huawei: break;
        case .github: break;
        case .microsoft: break;
        case .playgame: break;
        case .amazon: break;
        case .gamecenter: break;
        case .unknown: break;
        }
    }
}
