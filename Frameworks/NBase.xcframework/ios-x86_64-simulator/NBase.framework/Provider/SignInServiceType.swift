//
//  SignInServiceType.swift
//  NBase
//
//  Created by Kong Shinbae on 1/6/24.
//

import Foundation
public enum SignInServiceType {
    case anonymous
    case google
    case facebook
    case apple
    case kakao
    case naver
    case line
    case x
    case huawei
    case github
    case microsoft
    case playgame
    case amazon
    case gamecenter
    case unknown
}

public enum PushInServiceType {
    case sens
    case firebase
    case onesignal
}

public enum StoreInServiceType {
    case appstore
}

public enum regionType {
    case sg
    case us
    case jp
    case kr
    case eu
    case cn
    case alpha
    case local
}
