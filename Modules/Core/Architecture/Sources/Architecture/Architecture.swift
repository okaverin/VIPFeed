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
    associatedtype PresenterType

    var presenter: PresenterType { get }
}

@MainActor
public protocol Presenter: AnyObject {
    associatedtype ViewModelType

    var viewModel: ViewModelType { get set }
}

@MainActor
public protocol ViewModel: ObservableObject {
    associatedtype InteractorType

    /// This shoud be a weak reference
    var interactor: InteractorType? { get set }
}

@MainActor
public protocol Assembly {
    associatedtype ViewType: View

    func view(with state: any State, actions: any Actions) -> ViewType
}

public protocol State: Equatable, Sendable { }

public protocol Actions: Sendable { }
