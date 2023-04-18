//
//  SearchInputLogicModel.swift
//  
//
//  Created by Oleksandr Kaverin on 14/04/2023.
//

import Foundation
import Architecture

public struct SearchInputLogicModel {

    public init() {}

    enum PerformSearch {
        struct Request {
            let searchTerm: String
        }

        struct Response {
            var searchResults: [String]
        }

        struct ViewModel {
            var searchResults: [String]
        }
    }

}
