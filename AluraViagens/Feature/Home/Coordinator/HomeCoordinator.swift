//
//  HomeCoordinator.swift
//  AluraViagens
//
//  Created by Gabriel Mendonça Sousa Gonçalves  on 26/10/20.
//

import UIKit

class HomeCoordinator: Coordinator {
    
    var homeViewModel: HomeViewModel?
    var view: HomeVC?
    var navigation: UINavigationController?
    
    init() {
        view = HomeVC.instatiate()
        homeViewModel = HomeViewModel(coordinator: self)
        view?.viewModel = homeViewModel
    }
    
}
