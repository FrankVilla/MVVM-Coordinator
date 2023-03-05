//
//  UserListViewController.swift
//  MVVM+Coordinator
//
//  Created by KOVIGROUP on 05/03/2023.
//

import UIKit

class UserListViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    var viewModel: UserListViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewModel = UserListViewModel()
        viewModel.fetchUsers()
        
        tableView.dataSource = self
    }
}

extension UserListViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.users.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "UserCell", for: indexPath)
        
        let user = viewModel.users[indexPath.row]
        cell.textLabel?.text = user.name
        
        return cell
    }
}
