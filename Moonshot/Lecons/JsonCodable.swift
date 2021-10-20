//
//  JsonCodable.swift
//  Moonshot
//
//  Created by Giovanni Gaffé on 2021/10/19.
//

import Foundation

struct User: Codable {
    var name: String
    var address: Address
}

struct Address: Codable {
    var street: String
    var city: String
}
