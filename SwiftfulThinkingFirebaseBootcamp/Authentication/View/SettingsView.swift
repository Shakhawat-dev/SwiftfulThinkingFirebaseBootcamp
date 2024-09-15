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
            
            emailpassSection
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

extension SettingsView {
    var emailpassSection: some View {
        Section {
            Button("Password Reset") {
                Task {
                    do {
                        try await vm.resetPassword()
                        print("PASSWORD RESET!!!")
                    } catch {
                        
                    }
                }
            }
            
            Button("Update Password") {
                Task {
                    do {
                        try await vm.updatePassword()
                        print("PASSWORD UPDATE!!!")
                    } catch {
                        
                    }
                }
            }
            
            Button("Update Email") {
                Task {
                    do {
                        try await vm.updateEmail()
                        print("EMAIL UPDATE!!!")
                    } catch {
                        
                    }
                }
            }
        } header: {
            Text("Email Section")
        }
    }
}
