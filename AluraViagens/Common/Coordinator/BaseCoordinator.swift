//
//  BaseCoordinator.swift
//  AluraViagens
//
//  Created by Gabriel Mendonça Sousa Gonçalves  on 26/10/20.
//

import UIKit

enum PresentationType {
    case modal(viewController: UIViewController)
    case push(navigation: UINavigationController)
    
    public func associateValue() -> Any? {
        switch self {
        case .modal(let value):
            return value
        case .push(let value):
            return value
        }
    }
}

protocol Coordinator: AnyObject {
    associatedtype V: UIViewController
    var view: V? {get set}
    var navigation: UINavigationController? {get set}
    func start() -> V
    func start(usingPresentation presentatioin: PresentationType)
}

extension Coordinator {
    
    func start() -> V {
        if let view = view {
            return view
        }
        fatalError("You cannot home coordinator without initializing property view!")
    }
    
    func start(usingPresentation presentatioin: PresentationType) {
        switch presentatioin {
        case .push(let navigation):
            self.navigation = navigation
            navigation.pushViewController(start(), animated: true)
        case .modal(let viewController):
            self.navigation = UINavigationController(rootViewController: start())
            guard let nav = self.navigation else {return}
            viewController.present(nav, animated: true, completion: nil)
        }
    }
    
    
}
