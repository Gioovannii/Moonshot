//
//  Astronaut.swift
//  Moonshot
//
//  Created by Giovanni Gaffé on 2021/10/20.
//

import Foundation

// MARK: - Astronaut

struct Astronaut: Codable, Identifiable {
    let id: String
    let name: String
    let description: String
}
