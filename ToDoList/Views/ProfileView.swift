//
//  ProfileView.swift
//  ToDoList
//
//  Created by Enamul Haque Shamim on 31/7/24.
//

import SwiftUI

struct ProfileView: View {
    @StateObject var viewModel = ProfileViewViewModel()
    
    init() {
        
    }
    var body: some View {
        NavigationView{
            VStack{
                
            }
            .navigationTitle("Profile")
        }
    }
}

#Preview {
    ProfileView()
}
