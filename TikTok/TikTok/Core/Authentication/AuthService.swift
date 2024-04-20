//
//  AuthService.swift
//  TikTok
//
//  Created by kalyan . on 4/13/24.
//

import Foundation
import Firebase
import FirebaseAuth

@MainActor
class AuthService {
    
    @Published var userSession: FirebaseAuth.User?
    
    func updateUserSession() {
        self.userSession = Auth.auth().currentUser
    }
    
    func login(withEmail email: String, password: String) async throws {
        do {
            let result = try await Auth.auth().signIn(withEmail: email, password: password)
            self.userSession = result.user
            print("DEBUG: User is \(result.user.uid)")
        } catch {
            print("DEBUG: Failed to login with user error \(error.localizedDescription)")
            throw error
        }
    }
    
    func createUser(withEmail email: String, 
                 password: String,
                 username: String,
                 fullname: String) async throws {
        
        do {
            let result = try await Auth.auth().createUser(withEmail: email, password: password)
            self.userSession = result.user
            print("DEBUG: User is \(result.user.uid)")
        } catch {
            print("DEBUG: User is not registered \(error.localizedDescription)")
            throw error
        }
    }
    
    func signOut() {
        try? Auth.auth().signOut()
        self.userSession = nil
    }
}
