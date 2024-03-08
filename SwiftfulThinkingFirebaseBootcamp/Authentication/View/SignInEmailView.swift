//
//  SignInEmailView.swift
//  SwiftfulThinkingFirebaseBootcamp
//
//  Created by Shakhawat Hossain Shahin on 6/19/23.
//

import SwiftUI

struct SignInEmailView: View {
    @StateObject private var vm = SignInEmailViewModel()
    @Binding var showSignInView: Bool
    
    var body: some View {
        VStack(spacing: 20) {
            TextField("Email", text: $vm.email)
                .textFieldStyle(.roundedBorder)
            
            TextField("Password", text: $vm.password)
                .textFieldStyle(.roundedBorder)
            
            Button {
                // action
                Task {
                    do {
                        try await vm.signIn()
                        showSignInView = false
                        return
                    } catch {
                        print(error)
                    }
                    
                    do {
                        try await vm.signUp()
                        showSignInView = false
                        return
                    } catch {
                        print(error)
                    }
                }
                
            } label: {
                Text("Sign In")
            }
            .buttonStyle(.borderedProminent)
        }
        .padding()
    }
}

struct SignInEmailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            SignInEmailView(showSignInView: .constant(false))
        }
    }
}
