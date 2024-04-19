//
//  AuthService.swift
//  TikTok
//
//  Created by kalyan . on 4/13/24.
//

import Foundation
import Firebase
import FirebaseAuth

class AuthService {
    
    @Published var userSession: FirebaseAuth.User?
    
    func updateUserSession() {
        self.userSession = Auth.auth().currentUser
    }
    
    func login(withEmail email: String, password: String) async throws {
        print("DEBUG: Login with email \(email)")
    }
    
    func createUser(withEmail email: String, 
                 password: String,
                 username: String,
                 fullname: String) async throws {
        
        do {
            let result = try await Auth.auth().createUser(withEmail: email, password: password)
            print("DEBUG: User is \(result.user.uid)")
        } catch {
            print("DEBUG: User is not registered \(error.localizedDescription)")
            throw error
        }
    }
    
    func signOut() {
        
    }
}
