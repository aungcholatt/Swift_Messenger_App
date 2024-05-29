//
//  User.swift
//  Swift_Messenger_App
//
//  Created by macair on 19/05/2024.
//

import Foundation
import FirebaseFirestoreSwift

struct User: Codable, Identifiable, Hashable{
    @DocumentID var uid: String?
    let fullname: String
    let email: String
    var profileImageUrl: String?
    
    var id: String {
        return uid ?? NSUUID().uuidString
    }
}

    var firstName: String {
        let formatter = PersonNameComponentsFormatter()
        let components = formatter.personNameComponents(from: fullname)
        return components?givenName ?? fullname
    }

extension User{
    static let MOCK_USER = User(fullname: "Thein Naing", email: "thein@gmail.com", profileImageUrl: "thein")
}
