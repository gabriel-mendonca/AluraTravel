//
//  Trip.swift
//  AluraViagens
//
//  Created by Gabriel Mendonça Sousa Gonçalves  on 27/10/20.
//

import UIKit

struct TripModel {
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
    
    static func buildList() -> [TripModel] {
        return [
            TripModel(titulo: "Ceara", quantityDays: 3, price: "1.800,59", pathImage: "img1.png"),
            TripModel(titulo: "Rio de janeiro", quantityDays: 6, price: "1.200,00", pathImage: "img2.jpg"),
            TripModel(titulo: "Atibaia - Sao Paulo", quantityDays: 1, price: "890,00", pathImage: "img3.jpg"),
            TripModel(titulo: "Paraíba", quantityDays: 3, price: "1.385,00", pathImage: "img4.jpg"),
            TripModel(titulo: "Fortaleza", quantityDays: 4, price: "3.120,00", pathImage: "img5.jpg")
        
        ]
    }
}
