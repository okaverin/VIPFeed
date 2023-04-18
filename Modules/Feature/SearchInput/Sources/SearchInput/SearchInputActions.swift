//
//  File.swift
//  
//
//  Created by Oleksandr Kaverin on 14/04/2023.
//

import Foundation
import Architecture

public struct SearchInputActions: Actions {
    let performSearch: @Sendable (_ term: String) -> [String]
}
