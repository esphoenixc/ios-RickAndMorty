//
//  RMEndpoint.swift
//  RickAndMorty
//
//  Created by Phoenix on 2023/03/01.
//

import Foundation

/// Unique API endpoint
enum RMEndpoint: String {
    ///Endpoint to Character Info
    case character //"Character" as a string raw value
    ///Endpoint to Location
    case location
    /// Endpoint to episode
    case episode
}
