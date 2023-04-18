//
//  SearchInputWorker.swift
//  
//
//  Created by Oleksandr Kaverin on 18/04/2023.
//

import Foundation

internal protocol SearchInputWorkerProtocol {
    func performSearch(for searchTerm: String) async throws -> [String]
}

internal struct SearchInputWorker: SearchInputWorkerProtocol {
    func performSearch(for searchTerm: String) async throws -> [String] {
        // CallNetworking code here!
        return [
            "\(searchTerm) result 1",
            "Second result \(searchTerm)",
            "\(searchTerm) third",
        ]
    }
}
