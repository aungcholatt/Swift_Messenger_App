//
//  ChatView.swift
//  Swift_Messenger_App
//
//  Created by macair on 23/05/2024.
//

import SwiftUI

struct ChatView: View {
    @StateObject var viewModel: ChatViewModel
    let user: User
    
    init(user: User){
        self.user = user
        self._viewModel = StateObject(wrappedValue: ChatViewModel(user: user))
    }
    
    var body: some View {
        VStack {
            ScrollView {
                // Header
                VStack {
                    CircularProfileImageView(user: user, size: .xLarge)
                    
                    VStack(spacing: 4){
                        Text(user.fullname)
                            .font(.title3)
                            .fontWeight(.semibold)
                        
                        Text("Messenger")
                            .font(.footnote)
                            .foregroundColor(.gray)
                    }
                }
                // Message
                
                ForEach(viewModel.messages){ message in
                    ChatMessageCell(message: message)
                }
            }
            //Message input view
            
            Spacer()
            
            ZStack(alignment: .trailing) {
                TextField("Message...", text: $viewModel.messageText, axis: .vertical)
                    .padding(12)
                    .padding(.trailing, 48)
                    .background(Color(.systemGroupedBackground))
                    .clipShape(Capsule())
                    .font(.subheadline)
                
                Button{
                    viewModel.sendMessage()
                    viewModel.messageText = ""
                }label: {
                    Text("Send")
                        .fontWeight(.semibold)
                }
                .padding(.horizontal)
                
            }
            .padding()
                
        }
    }
}

#Preview {
    ChatView(user: User.MOCK_USER)
}
