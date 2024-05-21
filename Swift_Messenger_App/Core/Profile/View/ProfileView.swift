//
//  ProfileView.swift
//  Swift_Messenger_App
//
//  Created by macair on 19/05/2024.
//

import SwiftUI
import PhotosUI

struct ProfileView: View {
    @StateObject var viewModel = ProfileViewModel()
    let user: User
    
    var body: some View {
        VStack{
            //Header
            VStack{
                PhotosPicker(selection: $viewModel.selectedItem) {
                    //Profile Image
                    if let profileImage = viewModel.profileImage{
                        profileImage
                            .resizable()
                            .scaledToFill()
                            .frame(width: 80, height: 80)
                            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    } else{
                        CircularProfileImageView(user: user, size: .xLarge)
                    }
                }
                
                Text(user.fullname)
                    .font(.title2)
                    .fontWeight(.semibold)
            }
            //List
            List{
                Section{
                    ForEach(SettingsOptionsViewModel.allCases) { option in
                        HStack{
                            Image(systemName: option.imageName)
                                .resizable()
                                .frame(width: 24, height: 24)
                                .foregroundColor(option.imageBackgroundColor)
                            
                            Text(option.title)
                                .font(.subheadline)
                        }
                    }
                }
                Section{
                    Button("Log Out"){
                        
                    }
                    Button("Delete Account"){
                        
                    }
                }
                .foregroundColor(.red)
            }
        }
    }
}

#Preview {
    ProfileView(user: User.MOCK_USER)
}
