//
//  UserListViewModel.swift
//  MVVM+Coordinator
//
//  Created by KOVIGROUP on 05/03/2023.
//

import Foundation

class UserListViewModel {
    var users = [User]()
    
    func fetchUsers() {
        // This is where you would make a request to a server to fetch user data.
        // In this example, we will just create some dummy data.
        let user1 = User(id: "1", name: "John", email: "john@example.com")
        let user2 = User(id: "2", name: "Sarah", email: "sarah@example.com")
        let user3 = User(id: "3", name: "David", email: "david@example.com")
        
        users = [user1, user2, user3]
    }
}
