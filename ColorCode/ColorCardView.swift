//
//  ColorCardView.swift
//  ColorCode
//
//  Created by Hariom Kumar on 02/08/25.
//
import SwiftUI

struct ColorCardView: View {
    let hexColor: HexColor

    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            Text(hexColor.hexCode)
                .font(.headline)
                .foregroundColor(.white)
            Text("\(hexColor.timestamp.formatted(date: .numeric, time: .shortened))")
                .font(.caption)
                .foregroundColor(.white.opacity(0.8))
        }
        .padding()
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(Color(hex: hexColor.hexCode))
        .cornerRadius(12)
    }
}
