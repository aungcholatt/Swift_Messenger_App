//
//  ActiveNowViewModel.swift
//  Swift_Messenger_App
//
//  Created by macair on 28/05/2024.
//

import Foundation
import Firebase

class ActiveNowViewModel: ObservableObject {
    @Published var users = [User]()
    
    init() {
        Task { try await fetchUser() }
    }
    
    @MainActor
    private func fetchUser() async throws {
        guard let currentUid = Auth.auth().currentUser?.uid else { return }
        self.users = try await UserService.fetchAllUsers(limit: 10)
        self.users = users.filter({ $0.id != currentUid })
    }
}
