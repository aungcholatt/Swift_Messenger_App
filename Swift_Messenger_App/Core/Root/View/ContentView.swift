//
//  ContentView.swift
//  Swift_Messenger_App
//
//  Created by macair on 19/05/2024.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = ContentViewModel()
    
    var body: some View {
        Group{
            if viewModel.userSession != nil{
                InboxView()
            }else{
                LoginView()
            }
        }
   
    }
}

#Preview {
    ContentView()
}
