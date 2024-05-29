//
//  Route.swift
//  Swift_Messenger_App
//
//  Created by macair on 28/05/2024.
//

import Foundation

enum Route: Hashable {
    case profile(User)
    case chatView(User)
}
