//
//  File.swift
//  
//
//  Created by Oleksandr Kaverin on 14/04/2023.
//

import Foundation
import Architecture

internal protocol SearchInputActionsProtocol: Actions {
    func performSearch(term: String) async throws
}

internal struct SearchInputActions: SearchInputActionsProtocol {
    public init() {}

    public func performSearch(term: String) async throws {

    }
}
