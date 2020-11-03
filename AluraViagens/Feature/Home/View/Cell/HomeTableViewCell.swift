//
//  HomeTableViewCell.swift
//  AluraViagens
//
//  Created by Gabriel Mendonça Sousa Gonçalves  on 27/10/20.
//

import UIKit

class HomeTableViewCell: UITableViewCell {

    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var quantityDays: UILabel!
    @IBOutlet weak var price: UILabel!
    @IBOutlet weak var pathImage: UIImageView!
    
    
    func setup(for model: TripModel) {
        self.title.text = model.titleObjeto
        self.quantityDays.text = "\(model.quantityDays) dias"
        self.price.text = "R$ \(model.price)"
        self.pathImage.image = UIImage(named: model.pathImage)
    }
    
    func cornerRadius() {
        self.pathImage.clipsToBounds = true
        self.pathImage.layer.cornerRadius = 10
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
