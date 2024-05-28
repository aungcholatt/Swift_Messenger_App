//
//  InboxRowView.swift
//  Swift_Messenger_App
//
//  Created by macair on 19/05/2024.
//

import SwiftUI

struct InboxRowView: View {
    let message: Message
    
    var body: some View {
        HStack(alignment: .top, spacing: 12){
            CircularProfileImageView(user: message.user, size: .medium)
            
            VStack(alignment: .leading, spacing: 4){
                Text(message.user?.fullname ?? "")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                
                Text(message.messageText)
                     .font(.subheadline)
                     .foregroundColor(.gray)
                     .lineLimit(/*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/)
                     .frame(maxWidth: UIScreen.main.bounds.width - 100, alignment: .leading)
            }
            HStack{
                Text("Yesterday")
                
                Image(systemName: "chevron.right")
            }
            .font(.footnote)
            .foregroundColor(.gray)
        }
        //.padding(.horizontal)
        .frame(height: 72)
    }
}

//#Preview {
//    InboxRowView()
//}
