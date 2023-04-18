//
//  File.swift
//  
//
//  Created by Oleksandr Kaverin on 14/04/2023.
//

import Foundation
import Architecture

@MainActor
public struct SearchInputAssembly: Assembly {
    private let viewModel: SearchInputViewModel
    private let presenter: SearchInputPresenter
    private let interactor: SearchInputInteractor

    public init() {
        viewModel = SearchInputViewModel()
        presenter = SearchInputPresenter(viewModel: viewModel)
        let searchInputWorker = SearchInputWorker()
        interactor = SearchInputInteractor(
            presenter: presenter,
            searchInputWorker: searchInputWorker
        )
        viewModel.interactor = interactor
    }

    public func view(with state: any State) -> some SearchInputViewProtocol {
        let view = SearchInputView(viewModel: viewModel)
        return view
    }
}
