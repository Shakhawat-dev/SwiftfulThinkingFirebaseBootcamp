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
    
    func resetPassword() async throws {
        let authUser = try AuthenticationManager.shared.getAuthenticatedUser()
        
        guard let email = authUser.email else {
            throw URLError(.dataNotAllowed)
        }
        
        try await AuthenticationManager.shared.passwordReset(email: email)
    }
    
    func updateEmail() async throws {
        try await AuthenticationManager.shared.updateEmail(email: "shakhawat.ch@gmail.com")
    }
    
    func updatePassword() async throws {
        try await AuthenticationManager.shared.updatePassword(password: "123456")
    }
}


