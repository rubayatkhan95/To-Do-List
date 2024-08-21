//
//  ToDoListItemsView.swift
//  ToDoList
//
//  Created by Enamul Haque Shamim on 31/7/24.
//

import SwiftUI

struct ToDoListView: View {
    @StateObject var viewModel = ToDoListViewViewModel()
    
    private let userId: String
    init(userId: String) {
        self.userId  = userId
    }
    
    var body: some View {
        NavigationView{
            VStack{
                
            }
            .navigationTitle("To Do List")
            .toolbar {
                Button{
                    viewModel.showingNewItemView = true
                } label:{
                    Image(systemName: "plus")
                }
            }
            .sheet(isPresented: $viewModel.showingNewItemView){
                NewItemView(newItemPresented: $viewModel.showingNewItemView)
            }
        }
    }
}

#Preview {
    ToDoListView(userId: "")
}
