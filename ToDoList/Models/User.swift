//
//  User.swift
//  ToDoList
//
//  Created by Rubayat Shusmita Khan on 31/7/24.
//

import Foundation

struct User: Codable{
    let id : String
    let name: String
    let email : String
    let joined: TimeInterval
}
