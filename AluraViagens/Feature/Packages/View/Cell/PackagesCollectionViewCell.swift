//
//  PackagesCollectionViewCell.swift
//  AluraViagens
//
//  Created by Gabriel Mendonça Sousa Gonçalves  on 27/10/20.
//

import UIKit

class PackagesCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var imagePackages: UIImageView!
    @IBOutlet weak var labelTitle: UILabel!
    @IBOutlet weak var labelDays: UILabel!
    @IBOutlet weak var labelValue: UILabel!
    
    func setup(for model: PackagesTrip) {
        self.labelTitle.text = model.trip.titleObjeto
        self.labelDays.text = "\(model.trip.quantityDays) dias"
        self.labelValue.text = "R$ \(model.trip.price)"
        self.imagePackages.image = UIImage(named: model.trip.pathImage)
        
        self.layer.borderWidth = 1
        self.layer.borderColor = UIColor(red: 85.0/255.0, green: 85.0/255.0, blue: 85.00/255.0, alpha: 1).cgColor
    }
    
    func cornerRadius() {
        self.clipsToBounds = true
        self.layer.cornerRadius = 10
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
