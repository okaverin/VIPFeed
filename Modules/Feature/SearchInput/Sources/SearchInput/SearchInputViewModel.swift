//
//  SearchInputViewModel.swift
//  
//
//  Created by Oleksandr Kaverin on 14/04/2023.
//

import Foundation
import Architecture

@MainActor
internal protocol SearchInputViewModelProtocol: Architecture.ViewModel {
    var interactor: (any SearchInputInteractorProtocol)? { get set }

    var searchResults: [String] { get set }
}

@MainActor
internal final class SearchInputViewModel: SearchInputViewModelProtocol {
    weak var interactor: (any SearchInputInteractorProtocol)?

    @Published var searchResults = [String]()
}
