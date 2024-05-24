//
//  LoginViewModel.swift
//  Swift_Messenger_App
//
//  Created by macair on 24/05/2024.
//

import SwiftUI

class LoginViewModel: ObservableObject{
    
    @Published var email = ""
    @Published var password = ""
    
    func login() async throws{
        try await AuthService().login(withEmail: email, password: password)
    }
    
}
