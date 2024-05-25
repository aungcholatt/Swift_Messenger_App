//
//  ContentViewModel.swift
//  Swift_Messenger_App
//
//  Created by macair on 24/05/2024.
//

import Firebase
import Combine

class ContentViewModel: ObservableObject{
    @Published var userSession: FirebaseAuth.User?
    
    private var cancellables = Set<AnyCancellable>()
    
    init(){
        setupSubscribers()
    }
    
    private func setupSubscribers(){
        AuthService.shared.$userSession.sink{ [weak self] userSessionFromAuthService in
            self?.userSession = userSessionFromAuthService
        }.store(in: &cancellables)
    }
}
