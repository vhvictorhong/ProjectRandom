//
//  ExampleViewModel.swift
//  ProjectRE
//
//  Created by Victor Hong on 2022-12-24.
//

import Foundation
import Combine

class ExampleViewModel: ObservableObject {
    
    private let client = ExampleClient()
    private var cancellable: AnyCancellable?
    
    @Published var repo: [SearchResponse.Repo] = []
    
    func getRepo(keyword: String) {
        cancellable = client.getRepo(keyword: keyword)
            .replaceError(with: [])
            .sink { self.repo = $0 }
    }
}
