//
//  GoogleSignInProviderswift.swift
//  NBase
//
//  Created by Kong Shinbae on 1/6/24.
//

import Foundation
import UIKit
//import AdapterProviderGoogle
//
//import AdapterProviderGoogle

class GoogleSignInProvider: SocialSignInInterface  {
    
    init() {
        
    }
    public func topViewController(controller: UIViewController? = nil) -> UIViewController {
        let controller = controller ?? UIApplication.shared.keyWindow?.rootViewController
        
        if let navigationController = controller as? UINavigationController {
            return topViewController(controller: navigationController.visibleViewController)
        }
        if let tabController = controller as? UITabBarController {
            if let selected = tabController.selectedViewController {
                return topViewController(controller: selected)
            }
        }
        if let presented = controller?.presentedViewController {
            return topViewController(controller: presented)
        }
        return controller!
    }
    func signIn(completionHandler: @escaping (NBaseResult<Any?, NBaseError>) -> Void) {
        Task
        {
            do {
//                var googleClient = try await AdapterProviderGoogleFramework.shared.signIn(viewController: topViewController())
//                print(googleClient)
            } catch(let error) {
                
            }
        }
       
    }

    func signOut(completionHandler:  @escaping (NBaseResult<Any?, NBaseError>) -> Void) {
        // Google 로그아웃 로직 구현
    }
}
