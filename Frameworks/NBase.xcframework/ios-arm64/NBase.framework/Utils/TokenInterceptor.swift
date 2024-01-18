//
//  TokenInterceptor.swift
//  NcloudChatSample
//
//  Created by Han Dole Kim on 10/24/22.
//

import Apollo
import ApolloAPI
import Apollo

class TokenInterceptor: ApolloInterceptor {
    var id: String
    
    private static let authHeaderKey = "Authorization"
    private let authToken: String
    
    init(token: String) {
        authToken = token
        self.id = ""  // Initialize 'id' after 'token'
    }
    
    func interceptAsync<Operation>(
        chain: RequestChain,
        request: HTTPRequest<Operation>,
        response: HTTPResponse<Operation>?,
        completion: @escaping (Result<GraphQLResult<Operation.Data>, Error>) -> Void) where Operation : GraphQLOperation {
            request.addHeader(name: "Authorization", value: "Bearer \(authToken)")
            request.addHeader(name: "Language", value: CoreManager.shared.language)
            chain.proceedAsync(request: request, response: response, completion: completion)
    }
    
}
