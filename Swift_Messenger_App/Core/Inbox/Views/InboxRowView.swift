//
//  InboxRowView.swift
//  Swift_Messenger_App
//
//  Created by macair on 19/05/2024.
//

import SwiftUI

struct InboxRowView: View {
    var body: some View {
        HStack(alignment: .top, spacing: 12){
            CircularProfileImageView(user: User.MOCK_USER, size: .medium)
            
            VStack(alignment: .leading, spacing: 4){
                Text("kyaw Min")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                
                Text("Someting messages")
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

#Preview {
    InboxRowView()
}
