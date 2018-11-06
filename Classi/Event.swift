//
//  Event.swift
//  Prototipo
//
//  Created by Sergio Solmonte on 05/11/18.
//  Copyright © 2018 Sergio Solmonte. All rights reserved.
//

import Foundation
class loc {
    var indirizzo = ""
    var citta = ""
    var lat = 0.00
    var lon = 0.00
}

class event: Codable{
    
    
    var nome = ""
    var type = ""
    var ora = ""
    var description = ""
    var image = ""
//    var posizione: loc
    
}
