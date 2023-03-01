//
//  RMCharacterGender.swift
//  RickAndMorty
//
//  Created by Phoenix on 2023/03/01.
//

import Foundation


enum RMCharacterGender: String, Codable {
    // "female", "male", or "genderless", or "unknown"
    case male = "Male"
    case female = "Female"
    case genderless = "Genderless"
    case `unknown` = "unknown"
}
