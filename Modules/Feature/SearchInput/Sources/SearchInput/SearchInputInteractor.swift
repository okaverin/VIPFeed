//
//  SearchInputInteractor.swift
//  
//
//  Created by Oleksandr Kaverin on 14/04/2023.
//

import Foundation
import Architecture

internal typealias SearchInputInteractorProtocol = Interactor

@MainActor
internal final class SearchInputInteractor: SearchInputInteractorProtocol {
    var presenter: any SearchInputPresenterProtocol

    init(presenter: any SearchInputPresenterProtocol) {
        self.presenter = presenter
    }
}
