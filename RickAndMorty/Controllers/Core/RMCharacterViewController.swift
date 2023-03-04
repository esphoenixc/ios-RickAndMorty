//
//  RMCharacterViewController.swift
//  RickAndMorty
//
//  Created by Phoenix on 2023/03/01.
//

import UIKit

/// Controller to show and search for Characters
final class RMCharacterViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        title = "Characters"
        
//                let request = RMRequest(endpoint: .character, queryParameters: [URLQueryItem(name: "name", value: "rick"), URLQueryItem(name: "status", value: "alive" )])
//                print(request.url)
        
        RMService.shared.execute(.listCharacterRequests, expecting: RMGetAllCharacterResponse.self) { result in
       
            switch result {
            case .success(let model):
                print(model.info.count)
                print(model.results.count)
            case .failure(let error):
                
                print(String(describing: error))
            }
        }
    }
    
    
    
    
}

