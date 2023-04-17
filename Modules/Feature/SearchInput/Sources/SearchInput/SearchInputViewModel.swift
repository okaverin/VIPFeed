//
//  SearchInputViewModel.swift
//  
//
//  Created by Oleksandr Kaverin on 14/04/2023.
//

import Foundation
import Architecture

internal typealias SearchInputViewModelProtocol = Architecture.ViewModel

@MainActor
internal final class SearchInputViewModel: SearchInputViewModelProtocol {
    weak var interactor: (any SearchInputInteractorProtocol)?
}
