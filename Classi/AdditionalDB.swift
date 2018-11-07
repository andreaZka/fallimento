//
//  AdditionalDB.swift
//  Prototipo
//
//  Created by Andrea on 07/11/2018.
//  Copyright © 2018 Sergio Solmonte. All rights reserved.
//

import Foundation

class AdditionalDB {
    static let instance = AdditionalDB()
    
    var eventFriday = [event]()
    var eventMonday = [event]()
    var eventSaturday = [event]()
    var eventTuesday = [event]()
    var eventThursday = [event]()
    var eventWednesday = [event]()
    var eventSunday = [event]()
    
    private init() {}
    
}
