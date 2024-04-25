//
//  User.swift
//  TikTok
//
//  Created by kalyan . on 4/20/24.
//

import Foundation

struct User: Identifiable, Codable {
    let id: String
    let username: String
    let email: String
    let fullname: String
    var bio: String?
    var profileImageUrl: String?
}

extension User: Hashable { }
