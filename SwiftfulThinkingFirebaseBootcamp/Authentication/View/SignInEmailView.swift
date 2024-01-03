//
//  SignInEmailView.swift
//  SwiftfulThinkingFirebaseBootcamp
//
//  Created by Shakhawat Hossain Shahin on 6/19/23.
//

import SwiftUI

struct SignInEmailView: View {
    @StateObject var vm = SignInEmailViewModel()
    
    var body: some View {
        VStack(spacing: 20) {
            TextField("Email", text: $vm.email)
                .textFieldStyle(.roundedBorder)
            
            TextField("Password", text: $vm.password)
                .textFieldStyle(.roundedBorder)
            
            Button {
                // action
                vm.signIn()
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
            SignInEmailView()
        }
    }
}
