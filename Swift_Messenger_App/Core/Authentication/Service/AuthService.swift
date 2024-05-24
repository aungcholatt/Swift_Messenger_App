//
//  AuthService.swift
//  Swift_Messenger_App
//
//  Created by macair on 24/05/2024.
//

import SwiftUI
import Firebase

class AuthService{
    
    func login(withEmail email: String, password: String) async throws{
        print("DEBUG: Email is \(email)")
        print("DEBUG: Email is \(password)")
    }
    
    func create(withEmail email: String, password: String, fullname: String) async throws{
        do {
            let result = try await Auth.auth().createUser(withEmail: email, password: password)
            print("DEBUG: Create user \(result.user.uid)")
        } catch {
            print("DEBUG: Failed create user with error: \(error.localizedDescription)")
        }
    }
}
