//
//  File.swift
//  NBase
//
//  Created by Kong Shinbae on 1/8/24.
//

import Foundation
import UIKit
//import AdapterProviderApple

class AppleSignInProvider: SocialSignInInterface  {
    
    
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
        // Google 로그인 로직 구현
        Task
        {
            do {
//                var googleClient = try await AdapterProviderAppleFramework.shared.signIn(viewController: topViewController())
//                print(googleClient)
            } catch(let error) {
                
            }
        }
       
    }

    func signOut(completionHandler:  @escaping (NBaseResult<Any?, NBaseError>) -> Void) {
        // Google 로그아웃 로직 구현
    }
}
