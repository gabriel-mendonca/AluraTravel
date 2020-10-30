//
//  AppDelegate.swift
//  AluraViagens
//
//  Created by Gabriel Mendonça Sousa Gonçalves  on 26/10/20.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var coordinator: TabBarCoordinator?
    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let navigation = UINavigationController()
        coordinator = TabBarCoordinator()
        coordinator?.start(usingPresentation: .push(navigation: navigation))
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = coordinator?.configTabBar()
        window?.makeKeyAndVisible()
        window?.overrideUserInterfaceStyle = .light
        
        

        return true
    }



}

