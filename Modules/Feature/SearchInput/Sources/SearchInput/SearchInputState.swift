//
//  File.swift
//  
//
//  Created by Oleksandr Kaverin on 18/04/2023.
//

import Foundation
import Architecture

public struct SearchInputState: State {
    public internal(set) var isLoading: Bool = false
    public internal(set) var searchTerm: String = ""
    public internal(set) var searchResults: [String] = []

    public init() { }
}
