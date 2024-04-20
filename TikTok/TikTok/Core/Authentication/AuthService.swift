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
    private let userService = UserService()
    
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
            try await uploadUserData(withEmail: email, id: result.user.uid, username: username, fullname: fullname)
        } catch {
            print("DEBUG: User is not registered \(error.localizedDescription)")
            throw error
        }
    }
    
    func signOut() {
        try? Auth.auth().signOut()
        self.userSession = nil
    }
    
    private func uploadUserData(withEmail email: String,
                           id: String,
                           username: String,
                           fullname: String) async throws {
        let user = User(id: id, username: username, email: email, fullname: fullname)
        try await userService.uploadUserdata(user)
    }
}
