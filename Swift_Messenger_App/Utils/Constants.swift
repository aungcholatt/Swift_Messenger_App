//
//  Constants.swift
//  Swift_Messenger_App
//
//  Created by macair on 26/05/2024.
//

import Foundation
import Firebase

struct FirestoreConstants {
    
    static let UserCollection = Firestore.firestore().collection("users")
    static let MessagesCollection = Firestore.firestore().collection("messages")
}
