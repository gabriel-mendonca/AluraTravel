//
//  ViewController.swift
//  AluraViagens
//
//  Created by Gabriel Mendonça Sousa Gonçalves  on 26/10/20.
//

import UIKit

extension UIViewController {
    
    static func genericInstantiate<T: UIViewController>() -> T {
        return T.init(nibName: String(describing: self), bundle: Bundle(for: self))
    }
    
    public static func instatiate() -> Self {
        return genericInstantiate()
    }
    
    func hideNavigationBar() {
        self.navigationController?.setNavigationBarHidden(true, animated: false)
    }
    
    func showNavigationBar() {
        self.navigationController?.setNavigationBarHidden(false, animated: false)
    }
    


}

