//
//  Words.swift
//  Medict
//
//  Created by Kiran Kari on 10/15/23.
//

import Foundation

struct Word: Codable, Identifiable {
    let id: Int
    let name: String
    let type: String
    let def: String
    let syn: String
    struct Origin: Codable {
        let name: String
    }
    let origin: Origin
    struct Location: Codable {
        let name: String
    }
    let location: Location
    let image: String
    let info: String
   
}

