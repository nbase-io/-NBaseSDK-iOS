//
//  NBLink.swift
//  NBase
//
//  Created by Kong Shinbae on 1/10/24.
//

import Foundation


public struct NBLink {
    public let id: String?

}

extension NBLink: Sendable {}


extension NBLink: Encodable {
    enum CodingKeys: String, CodingKey {
        case id = "id"
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        
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
