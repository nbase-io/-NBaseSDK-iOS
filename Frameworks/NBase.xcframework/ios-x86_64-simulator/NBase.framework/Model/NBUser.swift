//
//  Initialize.swift
//  NBase
//
//  Created by Kong Shinbae on 1/10/24.
//

import Foundation

public struct NBUser {
    public let id: String?
    public let name: String?
    public let nickname: String?
    public let email: String?
    public let token: String?
    public let age: Int?
    public let birth: String
    public let sex: String?
    public let profile: String?
    public let mobile: String?

}

extension NBUser: Sendable {}


extension NBUser: Encodable {
    enum CodingKeys: String, CodingKey {
        case id = "id"
        case name = "name"
        case nickname = "nickname"
        case email = "email"
        case token = "token"
        case age = "age"
        case birth = "birth"
        case sex = "sex"
        case profile = "profile"
        case mobile = "mobile"
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(nickname, forKey: .nickname)
        try container.encodeIfPresent(email, forKey: .email)
        try container.encodeIfPresent(token, forKey: .token)
        try container.encodeIfPresent(age, forKey: .age)
        try container.encodeIfPresent(birth, forKey: .birth)
        try container.encodeIfPresent(sex, forKey: .sex)
        try container.encodeIfPresent(profile, forKey: .profile)
        try container.encodeIfPresent(mobile, forKey: .mobile)
        
    }
    public func encodeToBase64() -> String? {
        let encoder = JSONEncoder()
        do {
            let jsonData = try encoder.encode(self)
            return jsonData.base64EncodedString()
        } catch {
            print("Error encoding to JSON: \(error)")
            return nil
        }
    }
    public func encodeToJson() -> String? {
       let encoder = JSONEncoder()
       do {
           let jsonData = try encoder.encode(self)
           return String(data: jsonData, encoding: .utf8)
       } catch {
           print("Error encoding object to JSON: \(error)")
           return nil
       }
   }
}
