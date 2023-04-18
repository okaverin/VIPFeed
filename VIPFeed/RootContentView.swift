//
//  ContentView.swift
//  VIPFeed
//
//  Created by Oleksandr Kaverin on 14/04/2023.
//

import SwiftUI
import SearchInput

@MainActor
struct RootContentView: View {
    let searchInputAssembly = SearchInputAssembly()
    let searchInputState = SearchInputState()

    var body: some View {
//        NavigationStack {
            searchInputAssembly.view(with: searchInputState)
//        }
    }
}

struct RootContentView_Previews: PreviewProvider {
    static var previews: some View {
        RootContentView()
    }
}
