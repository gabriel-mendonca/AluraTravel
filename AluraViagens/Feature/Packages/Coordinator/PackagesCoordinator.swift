//
//  PackagesCoordinator.swift
//  AluraViagens
//
//  Created by Gabriel Mendonça Sousa Gonçalves  on 27/10/20.
//

import UIKit

class PackagesCoordinator: Coordinator {
    
    var packagesDetailsCoordinator: PackagesDetailsCoordinator?
    var packagesViewModel: PackagesViewModel?
    var view: PackagesVC?
    var navigation: UINavigationController?
    
    init() {
        view = PackagesVC.instatiate()
        packagesViewModel = PackagesViewModel(coordinator: self)
        view?.viewModel = packagesViewModel
        view?.viewModel?.delegate = self
    }
    
    func sendPackagesDetails(_ viewModel: PackagesViewModel) {
        packagesDetailsCoordinator = PackagesDetailsCoordinator()
        packagesDetailsCoordinator?.start(usingPresentation: .push(navigation: navigation ?? UINavigationController()))
        
    }
    
}

extension PackagesCoordinator: PackagesViewModelDelegate {
    func goToPackagesDetails(_ viewModel: PackagesViewModel) {
        sendPackagesDetails(viewModel)
    }
    
    
}
