//
//  DroneModel.swift
//  EGN_FinalProject
//
//  Created by Angelina Biafore on 1/26/24.
//

import Foundation
import ParseSwift

struct Drone: ParseObject {
    
    //Required by ParseObject
    var objectId: String?
    var createdAt: Date?
    var updatedAt: Date?
    var ACL: ParseACL?
    var originalData: Data?
    
    //our own custom properties
    var droneId: String?
    var status: String?
    var peopleFound: String?
    var droneImageURL: String? //come back to this
    var coordinates: String?
}
