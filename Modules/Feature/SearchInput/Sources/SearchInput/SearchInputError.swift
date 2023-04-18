//
//  SearchInputError.swift
//  
//
//  Created by Oleksandr Kaverin on 18/04/2023.
//

import Foundation

internal struct SearchInputError: Error {
    let localizedDescription: String

    static let searchFailed = SearchInputError(localizedDescription: "Search failed")
}
