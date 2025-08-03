//
//  Models.swift
//  ColorCode
//
//  Created by Hariom Kumar on 02/08/25.
//

import Foundation

struct HexColor: Identifiable, Codable {
    let id: String
    let hexCode: String
    let timestamp: Date
    var isSynced: Bool

    init(hexCode: String) {
        self.id = UUID().uuidString
        self.hexCode = hexCode
        self.timestamp = Date()
        self.isSynced = false
    }
}
