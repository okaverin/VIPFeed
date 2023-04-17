//
//  SearchInputPresenter.swift
//  
//
//  Created by Oleksandr Kaverin on 14/04/2023.
//

import Foundation
import Architecture

internal typealias SearchInputPresenterProtocol = Presenter

@MainActor
internal final class SearchInputPresenter: SearchInputPresenterProtocol {
    var viewModel: any SearchInputViewModelProtocol

    init(viewModel: any SearchInputViewModelProtocol) {
        self.viewModel = viewModel
    }
}
