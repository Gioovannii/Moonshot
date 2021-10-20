//
//  Mission.swift
//  Moonshot
//
//  Created by Giovanni Gaffé on 2021/10/20.
//

import Foundation

// MARK: - Mission / Crew

struct Mission: Codable, Identifiable {
    struct CrewRole: Codable {
        let name: String
        let role: String
    }

    let id: Int
    let launchDate: String?
    let crew: [CrewRole]
    let description: String
}
