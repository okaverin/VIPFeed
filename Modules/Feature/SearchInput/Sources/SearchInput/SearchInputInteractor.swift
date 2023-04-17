//
//  SearchInputInteractor.swift
//  
//
//  Created by Oleksandr Kaverin on 14/04/2023.
//

import Foundation
import Architecture

@MainActor
internal protocol SearchInputInteractorProtocol: Interactor {
    var presenter: any SearchInputPresenterProtocol { get }
}

@MainActor
internal final class SearchInputInteractor: SearchInputInteractorProtocol  {
    var presenter: any SearchInputPresenterProtocol

    init(presenter: any SearchInputPresenterProtocol) {
        self.presenter = presenter
    }
}
