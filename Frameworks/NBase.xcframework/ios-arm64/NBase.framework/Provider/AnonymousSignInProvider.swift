//
//  AnonymousSignInProvider.swift
//  NBase
//
//  Created by Kong Shinbae on 1/6/24.
//

import Foundation
import UIKit
class AnonymousSignInProvider: SocialSignInInterface {
    init() {
        
    }
    func signIn(completionHandler:  @escaping (NBaseResult<Any?, NBaseError>) -> Void) {
        let deviceId: String = getOrCreateUUID()
        let options: String = ""
        Mutation.signInWithAnonymously(deviceId: deviceId, options: options, completionHandler: completionHandler);
    }

    func signOut(completionHandler:  @escaping (NBaseResult<Any?, NBaseError>) -> Void) {
    }
}
