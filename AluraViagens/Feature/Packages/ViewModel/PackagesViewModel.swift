//
//  PackagesViewModel.swift
//  AluraViagens
//
//  Created by Gabriel Mendonça Sousa Gonçalves  on 27/10/20.
//

import UIKit

protocol PackagesViewModelDelegate: AnyObject {
    func goToPackagesDetails(_ viewModel: PackagesViewModel)
}

class PackagesViewModel: BaseViewModel {
    
    var childCoordinator: PackagesCoordinator
    weak var delegate: PackagesViewModelDelegate?
    
    init(coordinator: PackagesCoordinator) {
        self.childCoordinator = coordinator
    }
    
    func sendPackagesDetails() {
        delegate?.goToPackagesDetails(self)
    }
}
