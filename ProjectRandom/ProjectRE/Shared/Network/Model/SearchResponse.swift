//
//  SearchResponse.swift
//  ProjectRE
//
//  Created by Victor Hong on 2022-12-23.
//

import Foundation

struct SearchResponse: Decodable {
    let items: [Repo]
    
    struct Repo: Decodable {
        let id: Int
        let name: String
    }
}
