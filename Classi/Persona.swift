//
//  Persona.swift
//  Prototipo
//
//  Created by Andrea on 06/11/2018.
//  Copyright © 2018 Sergio Solmonte. All rights reserved.
//

import Foundation

struct Persona : Codable {
    
    var nome : String
    var cognome : String
    var feedback : Float
    var amici = [String]()
    
}
