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

    func present(progress: SearchInputLogicModel.SearchProgress.Response)
    func present(response: SearchInputLogicModel.Search.Response)
    func present(error: SearchInputLogicModel.SearchError.Response)

}

@MainActor
internal final class SearchInputPresenter: SearchInputPresenterProtocol {
    var viewModel: any SearchInputViewModelProtocol

    init(viewModel: any SearchInputViewModelProtocol) {
        self.viewModel = viewModel
    }

    func present(progress: SearchInputLogicModel.SearchProgress.Response) {
        viewModel.status = .loading(message: progress.progressMessage)
    }

    func present(response: SearchInputLogicModel.Search.Response) {
        viewModel.status = .success(results: response.searchResults)
    }

    func present(error: SearchInputLogicModel.SearchError.Response) {
        viewModel.status = .error(message: error.errorDescription)
    }
}
