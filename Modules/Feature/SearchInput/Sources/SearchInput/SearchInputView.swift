//
//  SearchInputView.swift
//  
//
//  Created by Oleksandr Kaverin on 14/04/2023.
//

import Foundation
import SwiftUI
import Architecture

public typealias SearchInputViewProtocol = Architecture.View

@MainActor
internal struct SearchInputView: SearchInputViewProtocol {
    @ObservedObject public var viewModel: SearchInputViewModel

    public init(viewModel: SearchInputViewModel) {
        self.viewModel = viewModel
    }

    public var body: some SwiftUI.View {
        NavigationStack {
            switch viewModel.status {
            case .none:
                EmptyView()
                    .background(Color.secondary)

            case let .loading(message: loadingMessage):
                VStack {
                    Text(loadingMessage)
                    ProgressView()
                }

            case let .error(message: errorMessage):
                Text(errorMessage)

            case let .success(results: results):
                List(results, id: \.hash) {
                    Button($0, action: {})
                }
            }
        }
        .searchable(text: $viewModel.searchTerm)
        .onSubmit(of: .search, {
            Task {
                await viewModel.performSearch(for: viewModel.searchTerm)
            }
        })
    }
}

struct SearchInputView_Previews: PreviewProvider {
    static let viewModel: SearchInputViewModel = {
        let viewModel = SearchInputViewModel()
        viewModel.status = .success(results: ["One", "Two", "Three"])
        return viewModel
    }()

    static var previews: some SwiftUI.View {
        SearchInputView(viewModel: viewModel)
    }
}
