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

    enum Search {
        struct Request {
            let searchTerm: String
        }

        struct Response {
            let searchResults: [String]
        }
    }

    enum SearchProgress {
        struct Response {
            let progressMessage: String
        }
    }

    enum SearchError {
        struct Response {
            let errorDescription: String
        }
    }
}
