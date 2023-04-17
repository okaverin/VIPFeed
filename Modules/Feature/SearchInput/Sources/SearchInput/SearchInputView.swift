//
//  SearchInputView.swift
//  
//
//  Created by Oleksandr Kaverin on 14/04/2023.
//

import Foundation
import SwiftUI
import Architecture

public typealias SearchInputViewProtocol = Architecture.View

@MainActor
internal struct SearchInputView: SearchInputViewProtocol {
    @ObservedObject public var viewModel: SearchInputViewModel

    public init(viewModel: SearchInputViewModel) {
        self.viewModel = viewModel
    }

    public var body: some SwiftUI.View {
        EmptyView()
    }
}

struct SearchInputView_Previews: PreviewProvider {
    static let viewModel = SearchInputViewModel()

    static var previews: some SwiftUI.View {
        SearchInputView(viewModel: viewModel)
    }
}
