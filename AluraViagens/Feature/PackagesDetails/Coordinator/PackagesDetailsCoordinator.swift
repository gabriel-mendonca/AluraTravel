//
//  PackagesDetailsCoordinator.swift
//  AluraViagens
//
//  Created by Gabriel Mendonça Sousa Gonçalves  on 27/10/20.
//

import UIKit

class PackagesDetailsCoordinator: Coordinator {
    
    var view: PackagesDetailsVC?
    var navigation: UINavigationController?
    
    
    init() {
        view = PackagesDetailsVC.instatiate()
    }
}
