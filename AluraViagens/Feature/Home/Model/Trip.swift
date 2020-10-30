//
//  Trip.swift
//  AluraViagens
//
//  Created by Gabriel Mendonça Sousa Gonçalves  on 27/10/20.
//

import UIKit

class Trip: NSObject {
    let titleObjeto: String
    let quantityDays: Int
    let price: String
    let pathImage: String
    
    init(titulo: String, quantityDays: Int, price: String, pathImage: String) {
        self.titleObjeto = titulo
        self.quantityDays = quantityDays
        self.price = price
        self.pathImage = pathImage
    }
}
