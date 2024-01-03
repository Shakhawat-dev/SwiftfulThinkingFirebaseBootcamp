//
//  SettingsViewModel.swift
//  SwiftfulThinkingFirebaseBootcamp
//
//  Created by Shakhawat Hossain Shahin on 9/12/23.
//

import Foundation

@MainActor
final class SettingsViewModel: ObservableObject {
    
    func logout() throws {
        try AuthenticationManager.shared.signOut()
    }
}
