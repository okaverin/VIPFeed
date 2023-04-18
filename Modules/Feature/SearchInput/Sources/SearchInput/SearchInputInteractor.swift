//
//  SearchInputInteractor.swift
//  
//
//  Created by Oleksandr Kaverin on 14/04/2023.
//

import Foundation
import Architecture

internal protocol SearchInputInteractorProtocol: Interactor {
    var presenter: any SearchInputPresenterProtocol { get }
    var searchInputWorker: any SearchInputWorkerProtocol { get }

    func performSearch(request: SearchInputLogicModel.Search.Request) async
}

internal actor SearchInputInteractor: SearchInputInteractorProtocol  {
    let presenter: any SearchInputPresenterProtocol
    let searchInputWorker: any SearchInputWorkerProtocol

    init(
        presenter: any SearchInputPresenterProtocol,
        searchInputWorker: any SearchInputWorkerProtocol
    ) {
        self.presenter = presenter
        self.searchInputWorker = searchInputWorker
    }

    func performSearch(request: SearchInputLogicModel.Search.Request) async {
        let progressResponse = SearchInputLogicModel.SearchProgress.Response(progressMessage: "Loading")
        await presenter.present(progress: progressResponse)

        try! await Task.sleep(for: .seconds(2)) // imitate loading

        do {
            let searchResults: [String] = try await searchInputWorker.performSearch(for: request.searchTerm)
            let response = SearchInputLogicModel.Search.Response(searchResults: searchResults)
            await presenter.present(response: response)
        }
        catch {
            let errorResponse = SearchInputLogicModel.SearchError.Response(errorDescription: error.localizedDescription)
            await presenter.present(error: errorResponse)
        }
    }
}
