//
//  RMRequest.swift
//  RickAndMorty
//
//  Created by Phoenix on 2023/03/01.
//

import Foundation

/// Object that represents a single API call
final class RMRequest {
    
    
    // Base Url
    // API Endpoint
    // Path Component
    // Query Parameter
    //
    // https://rickandmortyapi.com/api/character/2
    
    /// API Contatns
    private struct Constants {
        static let baseUrl = "https://rickandmortyapi.com/api"
    }
    
    /// Desired Endpoint
    private let endpoint: RMEndpoint
    
    /// Path components if any
    private let pathComponent: [String]
    
    /// Query parameters if any
    private let queryParameters: [URLQueryItem]
    
    /// Constructed url for the api request in string format
    private var urlString : String {
        var string = Constants.baseUrl
        string += "/"
        string += endpoint.rawValue
        
        if !pathComponent.isEmpty {
            pathComponent.forEach({
                string += "/\($0)"
            })
        }
        
        if !queryParameters.isEmpty {
            string += "?"
            let argumentString = queryParameters.compactMap({
                guard let value = $0.value else { return nil }
                return "\($0.name)=\(value)"
            }).joined(separator: "&")
            
            string += argumentString
        }
        
        return string
    }
    
    /// Computed & constructed API URL
    public var url: URL? {
        return URL(string: urlString)
    }
    
    /// Desired HTTP METHOD
    public let httpMethod = "GET"
    
    //MARK: - Public
    
    /// Construct reqeust
    /// - Parameters:
    ///   - endpoint: Target endpoint
    ///   - pathComponent: Collection of Path components
    ///   - queryParameters: Collection of query parameters
    init(endpoint: RMEndpoint, pathComponent: [String] = [], queryParameters: [URLQueryItem] = []) {
        self.endpoint = endpoint
        self.pathComponent = pathComponent
        self.queryParameters = queryParameters
    }
    
}


extension RMRequest {
    static let listCharacterRequests = RMRequest(endpoint: .character)
}
