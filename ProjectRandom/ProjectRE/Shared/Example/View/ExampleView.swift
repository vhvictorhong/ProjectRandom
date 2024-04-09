//
//  ExampleView.swift
//  ProjectRE
//
//  Created by Victor Hong on 2022-12-24.
//

import SwiftUI

struct ExampleView: View {
    
    private let viewModel = ExampleViewModel()
    var body: some View {
        VStack {
            Spacer()
            Button {
                viewModel.getRepo(keyword: "Swift")
            } label: {
                Text("Hello, world!")
                    .padding()
            }
            Spacer()
        }
    }
}

struct ExampleView_Previews: PreviewProvider {
    static var previews: some View {
        ExampleView()
    }
}
