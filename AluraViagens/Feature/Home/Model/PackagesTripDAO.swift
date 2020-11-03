//
//  PackagesTripDAO.swift
//  AluraViagens
//
//  Created by Gabriel Mendonça Sousa Gonçalves  on 28/10/20.
//

import Foundation

class PackagesTripDAO: NSObject {

func returnAllTrips() -> [PackagesTrip] {
    
    let pacotePortoGalinhas = PackagesTrip(hotelName: "Resort Porto de Galinhas", descriptionPackages: "Hotel + café da manhã", dateTrip: "8~15 de agosto", trip: TripModel(titulo: "Porto de Galinhas", quantityDays: 7, price: "2.490,99", pathImage: "img6.jpg"))
    
    let pacoteBuzios = PackagesTrip(hotelName: "Resort Buzios Spa", descriptionPackages: "Hotel + café da manhã", dateTrip: "9~16 de setembro", trip: TripModel(titulo: "Buzios", quantityDays: 7, price: "1.990,99", pathImage: "img7.jpg"))
    
    let pacoteNatal = PackagesTrip(hotelName: "Resort Natal Show", descriptionPackages: "Hotel + café da manhã", dateTrip: "13~18 de setembroo", trip: TripModel(titulo: "Natal", quantityDays: 5, price: "1.700,00", pathImage: "img8.jpg"))
    
    let pacoteRioDeJaneiro = PackagesTrip(hotelName: "Resort RJ Spa", descriptionPackages: "Hotel + café da manhã", dateTrip: "9~13 de outubro", trip: TripModel(titulo: "Rio de Janeiro", quantityDays: 4, price: "2.300,00", pathImage: "img9.jpg"))
    
    let pacoteAmazonas = PackagesTrip(hotelName: "Pousada Amazonas Plus", descriptionPackages: "Hotel + café da manhã", dateTrip: "9~13 de outubro", trip: TripModel(titulo: "Amazonas", quantityDays: 6, price: "2.850,00", pathImage: "img10.jpg"))
    
    let pacoteSalvador = PackagesTrip(hotelName: "Pousada Salvador", descriptionPackages: "Hotel + café da manhã", dateTrip: "5~10 de novembro", trip: TripModel(titulo: "Salvador", quantityDays: 6, price: "1.880,90", pathImage: "img11.jpg"))
    
    let listaPacotes: [PackagesTrip] = [pacotePortoGalinhas, pacoteBuzios, pacoteNatal, pacoteRioDeJaneiro, pacoteAmazonas, pacoteSalvador]
    
    return listaPacotes
}
}
