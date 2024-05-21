//
//  User.swift
//  Swift_Messenger_App
//
//  Created by macair on 19/05/2024.
//

import Foundation

struct User: Codable, Identifiable, Hashable{
    var id = NSUUID().uuidString
    let fullname: String
    let email: String
    var profileImageUrl: String?
}

extension User{
    static let MOCK_USER = User(fullname: "Thein Naing", email: "thein@gmail.com", profileImageUrl: "thein")
}
