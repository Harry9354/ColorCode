//
//  ContentView.swift
//  ColorCode
//
//  Created by Hariom Kumar on 02/08/25.
//
//
import SwiftUI

struct ContentView: View {
    @EnvironmentObject var viewModel: HexColorViewModel
    @EnvironmentObject var networkMonitor: NetworkMonitor

    var body: some View {
        NavigationView {
            VStack {
                Button("Generate Color") {
                    viewModel.generateColor()
                    viewModel.syncColorsIfNeeded(isConnected: networkMonitor.isConnected)
                }
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(10)

                List(viewModel.colors) { color in
                    ColorCardView(hexColor: color)
                }
            }
            .navigationTitle("Color Generator")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Circle()
                        .fill(networkMonitor.isConnected ? Color.green : Color.red)
                        .frame(width: 14, height: 14)
                }
            }
        }
    }
}

