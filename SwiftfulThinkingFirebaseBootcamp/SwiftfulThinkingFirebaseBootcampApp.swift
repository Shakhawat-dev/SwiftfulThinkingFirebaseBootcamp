//
//  SwiftfulThinkingFirebaseBootcampApp.swift
//  SwiftfulThinkingFirebaseBootcamp
//
//  Created by Shakhawat Hossain Shahin on 6/19/23.
//

import SwiftUI
import Firebase

@main
struct SwiftfulThinkingFirebaseBootcampApp: App {
    
    init() {
        FirebaseApp.configure()
        print("Configured Firebase!")
    }
    
    var body: some Scene {
        WindowGroup {
            // ContentView()
            RootView()
        }
    }
}
