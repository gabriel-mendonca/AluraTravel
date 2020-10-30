//
//  TabBarCoordinator.swift
//  AluraViagens
//
//  Created by Gabriel Mendonça Sousa Gonçalves  on 27/10/20.
//

import UIKit

class TabBarCoordinator: Coordinator {
    
    var window: UIWindow!
    var view: TabBarControllerVC?
    var tabBarView: TabBarControllerVC?
    var tabBarViewModel: TabBarViewModel?
    var navigation: UINavigationController?
    
    var homeCoordinator: HomeCoordinator!
    var packagesCoordinator: PackagesCoordinator!
    
    init() {
        view = TabBarControllerVC.instatiate()
        homeCoordinator = HomeCoordinator()
        packagesCoordinator = PackagesCoordinator()
        
    }
    
    func configTabBar() -> UITabBarController {
        
        homeCoordinator.start(usingPresentation: .push(navigation: UINavigationController()))
        packagesCoordinator.start(usingPresentation: .push(navigation: UINavigationController()))
        view?.viewControllers = [homeCoordinator.navigation!,packagesCoordinator.navigation!]
        view?.tabBar.items?[0].title = "Home"
        view?.tabBar.items?[0].badgeColor = .red
        view?.tabBar.items?[0].image = UIImage(named: "icon_package")
        view?.tabBar.items?[1].title = "Search"
        view?.tabBar.items?[1].badgeColor = .red
        view?.tabBar.items?[1].image = UIImage(named: "icon_search")
        
        return view!
    }
    
    func showHome() {
        self.view?.selectedIndex = 0
    }
    
    func showPackages() {
        self.view?.selectedIndex = 1
    }
    
    
    
    
}
