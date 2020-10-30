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
    
    func cornerRadius() {
        self.clipsToBounds = true
        self.layer.cornerRadius = 10
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
