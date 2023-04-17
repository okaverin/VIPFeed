//
//  ContentView.swift
//  VIPFeed
//
//  Created by Oleksandr Kaverin on 14/04/2023.
//

import SwiftUI
import SearchInput

@MainActor
struct ContentView: View {
    let assembly = SearchInputAssembly()
    let state = SearchInputState()
    let actions = SearchInputActions()

    var body: some View {
        NavigationStack {
            assembly.view(with: state, actions: actions)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
