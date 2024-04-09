//
//  ExampleClient.swift
//  ProjectRE
//
//  Created by Victor Hong on 2022-12-23.
//

import Foundation
import Combine

class ExampleClient: ObservableObject {
    
    func getRepo(keyword: String) -> AnyPublisher<[SearchResponse.Repo], Error> {
        let request: Request<SearchResponse> = .search(matching: keyword)
        return URLSession.shared.publisher(for: request)
            .map(\.items)
            .eraseToAnyPublisher()
    }
}
