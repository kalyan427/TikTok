//
//  AuthService.swift
//  TikTok
//
//  Created by kalyan . on 4/13/24.
//

import Foundation
import Firebase

class AuthService {
    
    func login(withEmail email: String, password: String) async throws {
        print("DEBUG: Login with email \(email)")
    }
    
    func createUser(withEmail email: String, 
                 password: String,
                 username: String,
                 fullname: String) async throws {
        print("DEBUG: User info \(email) \(username) \(fullname)")
    }
    
    func signOut() {
        
    }
}
