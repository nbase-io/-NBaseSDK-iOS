//
//  Initialize.swift
//  NBase
//
//  Created by Kong Shinbae on 1/10/24.
//

import Foundation

public struct NBInitialize {
    public let status: Bool?
    public let language: String?
    public let country: String
    public let remote_ip: String?
    public let platform: String?
    public let sandbox: Bool?

}

extension NBInitialize: Sendable {}


extension NBInitialize: Encodable {
    enum CodingKeys: String, CodingKey {
        case status = "status"
        case language = "language"
        case country = "country"
        case remote_ip = "remote_ip"
        case platform = "platform"
        case sandbox = "sandbox"
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(status, forKey: .status)
        try container.encodeIfPresent(language, forKey: .language)
        try container.encodeIfPresent(country, forKey: .country)
        try container.encodeIfPresent(remote_ip, forKey: .remote_ip)
        try container.encodeIfPresent(platform, forKey: .platform)
        try container.encodeIfPresent(sandbox, forKey: .sandbox)
        
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
