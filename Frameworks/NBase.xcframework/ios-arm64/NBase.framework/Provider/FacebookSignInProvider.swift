//
//  FacebookSignInProvider.swift
//  NBase
//
//  Created by Kong Shinbae on 1/6/24.
//

import Foundation
import UIKit
class FacebookSignInProvider: SocialSignInInterface {
    
    init() {
        
    }
    func signIn(completionHandler:  @escaping (NBaseResult<Any?, NBaseError>) -> Void) {
        // Facebook 로그인 로직 구현
    }

    func signOut(completionHandler:  @escaping (NBaseResult<Any?, NBaseError>) -> Void) {
        // Facebook 로그아웃 로직 구현
    }
}
