//
//  TripDAO.swift
//  AluraViagens
//
//  Created by Gabriel Mendonça Sousa Gonçalves  on 27/10/20.
//

import Foundation

class TripDAO: NSObject {

    func rerturnTrip() -> [Trip] {
        let ceara = Trip(titulo: "Ceara", quantityDays: 3, price: "1.800,59", pathImage: "img1.png")
        let rioDeJaneiro = Trip(titulo: "Rio de janeiro", quantityDays: 6, price: "1.200,00", pathImage: "img2.jpg")
        let interiorSaoPaulo = Trip(titulo: "Atibaia - Sao Paulo", quantityDays: 1, price: "890,00", pathImage: "img3.jpg")
        let paraiba = Trip(titulo: "Paraíba", quantityDays: 3, price: "1.385,00", pathImage: "img4.jpg")
        let fortaleza = Trip(titulo: "Fortaleza", quantityDays: 4, price: "3.120,00", pathImage: "img5.jpg")
        let listaViagem: [Trip] = [rioDeJaneiro,ceara,interiorSaoPaulo,paraiba, fortaleza]

        return listaViagem
    }
}
