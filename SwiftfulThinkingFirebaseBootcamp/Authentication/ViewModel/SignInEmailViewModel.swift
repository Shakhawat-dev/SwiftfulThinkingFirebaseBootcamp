//
//  SignInEmailViewModel.swift
//  SwiftfulThinkingFirebaseBootcamp
//
//  Created by Shakhawat Hossain Shahin on 8/31/23.
//

import Foundation

final class SignInEmailViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    
    func signIn() {
        guard !email.isEmpty, !password.isEmpty else {
            print("Email or pass empty")
            return
        }
        
        Task {
            do {
                let returnedUserData = try await AuthenticationManager.shared.createUser(email: email, password: password)
                print("Success")
                print(returnedUserData)
            } catch {
                print("Error: \(error)")
            }
                        
        }
        
    }
}
