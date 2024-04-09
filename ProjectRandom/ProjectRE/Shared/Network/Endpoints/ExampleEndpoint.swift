//
//  ExampleEndpoint.swift
//  ProjectRE
//
//  Created by Victor Hong on 2022-12-23.
//

import Foundation

enum ExampleEndpoint: String {
    private var baseURL: String { return "https://api.github.com" }

        case searchRepo = "/search/repositories"
        
        var url: URL {
            guard let url = URL(string: baseURL) else {
                preconditionFailure("The url used in \(ExampleEndpoint.self) is not valid")
            }
            return url.appendingPathComponent(self.rawValue)
        }
}

extension Request where Response == SearchResponse {
    static func search(matching query: String) -> Self {
        Request(url: ExampleEndpoint.searchRepo.url, method: .get([.init(name: "q", value: query)]))
    }
}
