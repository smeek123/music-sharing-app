//
//  AuthResponse.swift
//  MusicSharing
//
//  Created by Sean P. Meek on 10/10/22.
//

import Foundation

struct AuthResponse: Codable {
    let access_token: String
    let token_type: String
    let scope: String
    let expires_in: Int
    let refresh_token: String?
}
