//
//  SearchInputPresenter.swift
//  
//
//  Created by Oleksandr Kaverin on 14/04/2023.
//

import Foundation
import Architecture

@MainActor
internal protocol SearchInputPresenterProtocol: Presenter {
    var viewModel: any SearchInputViewModelProtocol { get set }
}

@MainActor
internal final class SearchInputPresenter: SearchInputPresenterProtocol {
    var viewModel: any SearchInputViewModelProtocol

    init(viewModel: any SearchInputViewModelProtocol) {
        self.viewModel = viewModel
    }
}
