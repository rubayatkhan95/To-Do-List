//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Rubayat Shusmita Khan on 27/7/24.
//
import FirebaseCore;
import SwiftUI;

@main
struct ToDoListApp: App {
    init(){
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
