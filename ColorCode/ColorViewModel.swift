//
//  ColorViewModel.swift
//  ColorCode
//
//  Created by Hariom Kumar on 02/08/25.
//

import Foundation

class HexColorViewModel: ObservableObject {
    @Published var colors: [HexColor] = [] {
        didSet {
            saveToUserDefaults()
        }
    }

    private let firebaseService = FirebaseService()
    private let storageKey = "savedColors"

    init() {
        loadFromUserDefaults()
    }

    func generateColor() {
        let hex = String(format: "#%06X", Int.random(in: 0...0xFFFFFF))
        let color = HexColor(hexCode: hex)
        colors.insert(color, at: 0)
    }

    func syncColorsIfNeeded(isConnected: Bool) {
        guard isConnected else { return }

        for (index, color) in colors.enumerated() where !color.isSynced {
            firebaseService.uploadColor(color) { success in
                if success {
                    self.colors[index].isSynced = true
                }
            }
        }
    }

    private func saveToUserDefaults() {
        if let encoded = try? JSONEncoder().encode(colors) {
            UserDefaults.standard.set(encoded, forKey: storageKey)
        }
    }

    private func loadFromUserDefaults() {
        if let data = UserDefaults.standard.data(forKey: storageKey),
           let decoded = try? JSONDecoder().decode([HexColor].self, from: data) {
            colors = decoded
        }
    }
}
