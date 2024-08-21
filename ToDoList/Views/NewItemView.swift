//
//  NewItemView.swift
//  ToDoList
//
//  Created by Enamul Haque Shamim on 31/7/24.
//

import SwiftUI

struct NewItemView: View {
    @StateObject var viewModel = NewItemViewViewModel();
    @Binding var newItemPresented: Bool
    var body: some View {
        VStack{
            Text("New Item")
                .font(.system(size: 32))
                .bold()
                .padding(.top, 100)
            Form {
                    //Title
                TextField("Title", text: $viewModel.title)
                    .textFieldStyle(DefaultTextFieldStyle())
                    //Due Date
                DatePicker("Due Date", selection: $viewModel.dueDate)
                    .datePickerStyle(GraphicalDatePickerStyle())
                    // Button
                TLButton(title: "Save", backgroundColor: .pink, textColor: .white ){
                    if viewModel.canSave {
                        viewModel.save()
                        newItemPresented = false
                    } else {
                        viewModel.showAlert = true
                    }
                   
                }.padding()
            }
            .alert(isPresented: $viewModel.showAlert){
                Alert(
                    title: Text("Error") ,
                    message: Text("Please fill all the fields and select due date that is today or newer "))
            }
        }
    }
}

#Preview {
    NewItemView(newItemPresented: Binding(get: {
        return true
    }, set: { _ in
    
    }))
}
