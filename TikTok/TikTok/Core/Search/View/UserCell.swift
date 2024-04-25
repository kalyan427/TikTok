//
//  UserCell.swift
//  TikTok
//
//  Created by kalyan . on 2/17/24.
//

import SwiftUI

struct UserCell: View {
    let user: User
    
    var body: some View {
        HStack(spacing: 12) {
            Image(systemName: "person.circle.fill")
                .resizable()
                .frame(width: 48, height: 48)
                .foregroundStyle(Color(.systemGray5))
            
            VStack(alignment: .leading) {
                Text(user.username)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                
                Text(user.fullname)
                    .font(.footnote)
            }
            .foregroundColor(.black)
            Spacer()
        }
    }
}

#Preview {
    UserCell(user: DeveloperPreview.user)
}
