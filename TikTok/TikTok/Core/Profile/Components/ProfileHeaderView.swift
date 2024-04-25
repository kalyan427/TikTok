//
//  ProfileHeaderView.swift
//  TikTok
//
//  Created by kalyan . on 2/24/24.
//

import SwiftUI

struct ProfileHeaderView: View {
    let user: User
    
    var body: some View {
        VStack(spacing: 16) {
            VStack(spacing: 8) {
                // profile image
                Image(systemName: "person.circle.fill")
                    .resizable()
                    .frame(width: 80, height: 80)
                    .foregroundStyle(Color(.systemGray5))
                
                // username
                Text("@\(user.username)")
                    .font(.subheadline)
                    .fontWeight(.semibold)
            }
        }
        
        // Stats View
        HStack(spacing: 16) {
            UserStatView(value: 5, title: "Following")
            UserStatView(value: 1, title: "Followers")
            UserStatView(value: 7, title: "Likes")
        }
        
        // action button
        Button {
            
        } label: {
            Text("Edit Profile")
                .font(.subheadline)
                .fontWeight(.semibold)
                .frame(width: 360, height: 32)
                .foregroundStyle(.black)
                .background(Color(.systemGray6))
                .clipShape(RoundedRectangle(cornerRadius: 6))
        }
        
        Divider()
    }
}

#Preview {
    ProfileHeaderView(user: DeveloperPreview.user)
}
