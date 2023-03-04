//
//  RMEpisode.swift
//  RickAndMorty
//
//  Created by Phoenix on 2023/03/01.
//

import Foundation


struct RMEpisode: Codable {
    
      let id: Int
      let name: String
      let air_date:String
      let episode:String
      let characters: [String]
      let url: String
      let created: String
    
}
