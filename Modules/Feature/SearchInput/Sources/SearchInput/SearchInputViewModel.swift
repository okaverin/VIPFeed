//
//  SearchInputViewModel.swift
//  
//
//  Created by Oleksandr Kaverin on 14/04/2023.
//

import Foundation
import Architecture

internal enum SearchInputViewStatus: Equatable {
    case none
    case loading(message: String)
    case error(message: String)
    case success(results: [String])
}

@MainActor
internal protocol SearchInputViewModelProtocol: Architecture.ViewModel {
    var interactor: (any SearchInputInteractorProtocol)? { get set }

    var searchTerm: String { get set }
    var status: SearchInputViewStatus { get set }

    func performSearch(for searchTerm: String) async
}

@MainActor
internal final class SearchInputViewModel: SearchInputViewModelProtocol {
    weak var interactor: (any SearchInputInteractorProtocol)?

    @Published var searchTerm: String = ""
    @Published var status: SearchInputViewStatus = .none

    // should VM be doing this?…
    func performSearch(for searchTerm: String) async {
        let request = SearchInputLogicModel.Search.Request(searchTerm: searchTerm)
        await interactor?.performSearch(request: request)
    }
}
