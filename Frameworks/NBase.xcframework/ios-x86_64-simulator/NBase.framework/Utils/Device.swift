//
//  Device.swift
//  NBase
//
//  Created by Kong Shinbae on 1/6/24.
//

import Foundation
func getOrCreateUUID() -> String {
    let key = "UniqueDeviceIdentifier"
    if let uniqueId = UserDefaults.standard.string(forKey: key) {
        return uniqueId
    } else {
        let uuid = UUID().uuidString
        UserDefaults.standard.set(uuid, forKey: key)
        return uuid
    }
}
