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
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
//    init() {
//        // Not Fully Sufficient yet!!!
//        FirebaseApp.configure()
//        print("Configured Firebase!")
//    }
    
    var body: some Scene {
        WindowGroup {
            // ContentView()
            RootView()
        }
    }
}


class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        print("🪄 application is starting up. ApplicationDelegate didFinishLaunchingWithOptions.")
        FirebaseApp.configure()
        
        return true
    }
}
