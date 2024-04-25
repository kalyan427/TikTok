//
//  UserProfileView.swift
//  TikTok
//
//  Created by kalyan . on 4/24/24.
//

import SwiftUI

struct UserProfileView: View {
    let user: User
    
    var body: some View {
        ScrollView {
            VStack(spacing: 2) {
                // Profile header
                ProfileHeaderView(user: user)
                
                // Post grid view
                PostGridView()
            }
        }
    }
}

#Preview {
    UserProfileView(user: DeveloperPreview.user)
}
