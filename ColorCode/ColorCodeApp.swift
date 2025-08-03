//
//  ColorCodeApp.swift
//  ColorCode
//
//  Created by Hariom Kumar on 02/08/25.
//

import SwiftUI
import Firebase

class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    FirebaseApp.configure()

    return true
  }
}


@main
struct ColorCodeApp: App {
    @StateObject private var viewModel = HexColorViewModel()
    @StateObject private var networkMonitor = NetworkMonitor()
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
   

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(viewModel)
                .environmentObject(networkMonitor)
        }
    }
}


