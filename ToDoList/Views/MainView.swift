//
//  ContentView.swift
//  ToDoList
//
//  Created by Enamul Haque Shamim on 27/7/24.
//

import SwiftUI

struct MainView: View {
    @StateObject var viewModel = MainViewViewModel()
    var body: some View {
        if viewModel.isSignedIn , !viewModel.currentUserId.isEmpty{
            accountView
        } else {
            NavigationView {
               LoginView()
            }
        }
    }
    
    @ViewBuilder
    var accountView: some View{
        TabView{
            ToDoListView(userId: viewModel.currentUserId)
            .tabItem {
                Label("Home", systemImage: "house")
            }
            ProfileView()
            .tabItem {
                Label("Home", systemImage: "person.circle")
            }
        }
    }
}

#Preview {
    MainView()
}
