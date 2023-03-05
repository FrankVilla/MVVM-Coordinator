//
//  Coordinator.swift
//  MVVM+Coordinator
//
//  Created by KOVIGROUP on 05/03/2023.
//

import Foundation
import UIKit

class AppCoordinator {
    var navigationController: UINavigationController?
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let userListViewController = UserListViewController()
        userListViewController.viewModel = UserListViewModel()
        userListViewController.viewModel.fetchUsers()
        userListViewController.title = "User List"
        
        navigationController?.pushViewController(userListViewController, animated: false)
    }
}   
