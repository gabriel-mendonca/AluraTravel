//
//  PackageTrip.swift
//  AluraViagens
//
//  Created by Gabriel Mendonça Sousa Gonçalves  on 28/10/20.
//

import UIKit

class PackagesTrip: NSObject {
    let hotelName: String
    let descriptionPackages: String
    let dateTrip: String
    let trip: Trip
    
    
    init(hotelName:String,descriptionPackages: String,dateTrip: String,trip: Trip) {
        self.hotelName = hotelName
        self.descriptionPackages = descriptionPackages
        self.dateTrip = dateTrip
        self.trip = trip

    }
    
}
