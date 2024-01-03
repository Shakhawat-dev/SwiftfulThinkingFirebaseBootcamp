//
//  AuthDataResultModel.swift
//  SwiftfulThinkingFirebaseBootcamp
//
//  Created by Shakhawat Hossain Shahin on 8/31/23.
//

import Foundation
import FirebaseAuth

struct AuthDataResultModel {
    let uid: String
    let email: String?
    let photoUrl: String?
    
    init(user: User) {
        self.uid = user.uid
        self.email = user.email
        self.photoUrl = user.photoURL?.absoluteString
    }
}
