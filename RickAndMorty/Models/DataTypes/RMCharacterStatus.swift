//
//  RMCharacterStatus.swift
//  RickAndMorty
//
//  Created by Phoenix on 2023/03/01.
//

import Foundation

enum RMCharacterStatus: String, Codable {
    // "Alive", "dead", or "unknown"
    case alive = "Alive"
    case dead = "Dead"
    case `unknown` = "unknown"
}
