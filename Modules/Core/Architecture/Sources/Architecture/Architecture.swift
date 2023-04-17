//
//  Architecture.swift
//  
//
//  Created by Oleksandr Kaverin on 14/04/2023.
//

import Foundation
import SwiftUI

@MainActor
public protocol View<ViewModelType>: SwiftUI.View {
    associatedtype ViewModelType: ViewModel

    var viewModel: ViewModelType { get set }
}

@MainActor
public protocol Interactor: AnyObject {
    var presenter: any Presenter { get }
}

@MainActor
public protocol Presenter: AnyObject {
    var viewModel: any ViewModel { get set }
}

@MainActor
public protocol ViewModel: ObservableObject {
    /// This shoud be a weak reference
    var interactor: (any Interactor)? { get set }
}

@MainActor
public protocol Assembly {
    associatedtype ViewType: View

    func view(with state: any State, actions: any Actions) -> ViewType
}

@MainActor
public protocol State: Equatable { }

@MainActor
public protocol Actions { }
