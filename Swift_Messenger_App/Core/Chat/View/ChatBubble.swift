//
//  ChatBubble.swift
//  Swift_Messenger_App
//
//  Created by macair on 23/05/2024.
//

import SwiftUI

struct ChatBubble: Shape {
    let isFromCurrentUser: Bool
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect,
                                byRoundingCorners: [
                                    .topLeft,
                                    .topRight,
                                    isFromCurrentUser ? .bottomLeft : .bottomRight],
                                cornerRadii: CGSize(width: 16, height: 16))
        
        return Path(path.cgPath)
    }
    
}

#Preview {
    ChatBubble(isFromCurrentUser: true)
}
