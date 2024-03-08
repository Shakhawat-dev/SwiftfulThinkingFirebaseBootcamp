//
//  SignInEmailViewModel.swift
//  SwiftfulThinkingFirebaseBootcamp
//
//  Created by Shakhawat Hossain Shahin on 8/31/23.
//

import Foundation

@MainActor
final class SignInEmailViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    
    func signUp() async throws {
        guard !email.isEmpty, !password.isEmpty else {
            print("Email or pass empty")
            return
        }
        
//        let returnedUserData = try await AuthenticationManager.shared.createUser(email: email, password: password)
        try await AuthenticationManager.shared.createUser(email: email, password: password)
    }
    
    func signIn() async throws {
        guard !email.isEmpty, !password.isEmpty else {
            print("Email or pass empty")
            return
        }
        
        try await AuthenticationManager.shared.signInUser(email: email, password: password)
    }
}
