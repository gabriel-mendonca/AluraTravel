//
//  PackagesDetailsVC.swift
//  AluraViagens
//
//  Created by Gabriel Mendonça Sousa Gonçalves  on 27/10/20.
//

import UIKit

class PackagesDetailsVC: UIViewController {
    
    @IBOutlet weak var labelTitle: UILabel!
    @IBOutlet weak var labelDescription: UILabel!
    @IBOutlet weak var imageTrip: UIImageView!
    @IBOutlet weak var labelDate: UILabel!
    @IBOutlet weak var labelPrice: UILabel!
    
    var packatesComplete: PackagesTrip? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        overrideUserInterfaceStyle = .light
        setup()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
//        showNavigationBar()
        super.viewWillAppear(animated)
    }
    
    func setup() {
        if let package = packatesComplete {
            self.imageTrip.image = UIImage(named: package.trip.pathImage)
            self.labelTitle.text = package.trip.titleObjeto.uppercased()
            self.labelDescription.text = package.descriptionPackages
            self.labelDate.text = package.dateTrip
            self.labelPrice.text = package.trip.price
        }
    }
}
