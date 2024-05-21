//
//  ActiveNowView.swift
//  Swift_Messenger_App
//
//  Created by macair on 19/05/2024.
//

import SwiftUI

struct ActiveNowView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            HStack(spacing: 32){
                ForEach(0 ... 10, id:  \.self){ user in
                    VStack{
                        //Green light clycle bottom setting
                        ZStack(alignment: .bottomTrailing){
                            CircularProfileImageView(user: User.MOCK_USER, size: .medium)
                        
                            ZStack{
                                Circle()
                                    .fill(.white)
                                    .frame(width: 18,height: 18)
                                //Active now green light cycle creation setting
                                Circle()
                                    .fill(Color(.systemGreen))
                                    .frame(width: 12,height: 12)
                            }
                        }
                        Text("Hein")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                    }
                }
            }
            .padding()
        }
        .frame(height: 106)
    }
}

#Preview {
    ActiveNowView()
}
