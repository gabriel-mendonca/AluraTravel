//
//  HomeViewModel.swift
//  AluraViagens
//
//  Created by Gabriel Mendonça Sousa Gonçalves  on 26/10/20.
//

import UIKit

class HomeViewModel: BaseViewModel {
    
    var childCoordinator: HomeCoordinator
    
    init(coordinator: HomeCoordinator) {
        self.childCoordinator = coordinator
    }
    
    
}
