//
//  Event.swift
//  Prototipo
//
//  Created by Sergio Solmonte on 05/11/18.
//  Copyright © 2018 Sergio Solmonte. All rights reserved.
//


import MapKit

struct loc: Codable {
    var indirizzo: String
    var citta: String
    var lat: Double
    var lon: Double
}

struct event: Codable {
    
    
    var nome: String
    var type: String
    var ora: String
    var description: String
    var image: String
    var posizione: loc
    
    func getPin() -> eventPin{
        let pin = eventPin(title: self.nome, type: type, coordinate: CLLocationCoordinate2D(latitude: (self.posizione.lat), longitude: (self.posizione.lon)))
        
        
        
        
        return pin
    }
    
}
