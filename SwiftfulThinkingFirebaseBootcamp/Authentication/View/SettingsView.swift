//
//  SettingsView.swift
//  SwiftfulThinkingFirebaseBootcamp
//
//  Created by Shakhawat Hossain Shahin on 9/12/23.
//

import SwiftUI

struct SettingsView: View {
    @ObservedObject private var vm = SettingsViewModel()
    @Binding var showSignInView: Bool
    var body: some View {
        List {
            Button("Logout") {
                Task {
                    do {
                        try vm.logout()
                        showSignInView = true
                    } catch {
                        print(error)
                    }
                }
            }
            
            Button("Password Reset") {
                Task {
                    do {
                        try await vm.resetPassword()
                        print("PASSWORD RESET!!!")
                    } catch {
                        
                    }
                }
            }
        }
        .navigationBarTitle("Settings")
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            SettingsView(showSignInView: .constant(false))
        }
        
    }
}
