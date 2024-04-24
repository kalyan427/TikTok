//
//  PreviewProvider.swift
//  TikTok
//
//  Created by kalyan . on 4/23/24.
//

import Foundation

struct DeveloperPreview {
    
    static var user = User(
        id: NSUUID().uuidString,
        username: "lewis_Hamilton",
        email: "lewis@gmail.com",
        fullname: "Lewis Hamilton"
    )
    
    static var users: [User] = [
        .init(id: NSUUID().uuidString, username: "Kalyan", email: "Kalyan@gmail.com", fullname: "Kalyan v"),
        .init(id: NSUUID().uuidString, username: "Harsha", email: "Harsha@gmail.com", fullname: "Harsha v"),
        .init(id: NSUUID().uuidString, username: "Daddy", email: "Daddy@gmail.com", fullname: "Daddy"),
        .init(id: NSUUID().uuidString, username: "Mom", email: "Mom@gmail.com", fullname: "Mom")
    ]
}
