//
//  RMLocation.swift
//  RickAndMorty
//
//  Created by Phoenix on 2023/03/01.
//

import Foundation


struct RMLocation: Codable {
      let id: Int
      let name: String
      let type: String
      let dimension: String
      let residents: [String]
      let url: String
      let created: String
    
}
