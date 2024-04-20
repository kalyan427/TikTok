//
//  CurrentUserProfileView.swift
//  TikTok
//
//  Created by kalyan . on 2/24/24.
//

import SwiftUI

struct CurrentUserProfileView: View {
    
    let authService: AuthService
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 2) {
                    
                    // Profile header
                    ProfileHeaderView()
                    
                    // Post grid view
                    PostGridView()
                }
                .padding(.top)
            }
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button("Sign Out") {
                        print("DEBUG: Sign out here..")
                        authService.signOut()
                    }
                        .font(.subheadline)
                        .fontWeight(.semibold)
                }
            }
        }
    }
}

#Preview {
    CurrentUserProfileView(authService: AuthService())
}
