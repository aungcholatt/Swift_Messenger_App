//
//  RegistrationViewModel.swift
//  Swift_Messenger_App
//
//  Created by macair on 24/05/2024.
//

import SwiftUI

class RegistrationViewModel: ObservableObject{
    
    @Published var email = ""
    @Published var password = ""
    @Published var fullname = ""
    
    func createUser() async throws{
        try await AuthService().create(withEmail: email, password: password, fullname: fullname)
    }
}
