//
//  SocialSignInInterface.swift
//  NBase
//
//  Created by Kong Shinbae on 1/6/24.
//

import Foundation
import UIKit
protocol SocialSignInInterface {
    func signIn(completionHandler:  @escaping (NBaseResult<Any?, NBaseError>) -> Void)
    func signOut(completionHandler:  @escaping (NBaseResult<Any?, NBaseError>) -> Void)
}
