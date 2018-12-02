//
//  FriendListView.swift
//  FirstManualViperApp
//
//  Created by MisnikovRoman on 02/12/2018.
//  Copyright © 2018 MisnikovRoman. All rights reserved.
//

import UIKit

class FriendListView: UIViewController {
    
    var presenter: IFriendListPresenter?
    
    let tableView = UITableView()
    
    override func viewDidLoad() {
        initialSetup()
        addSubviews()
        setupTableView()
        presenter?.viewDidLoad()
    }
    
    func initialSetup() {
        title = "Список контактов"
        view.backgroundColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
    }
    
    func addSubviews() {
        view.addSubview(tableView)
    }
    
    func setupTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.translatesAutoresizingMaskIntoConstraints = false
        
        tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        tableView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor).isActive = true
        tableView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
    }
}

extension FriendListView: IFriendListView {
    
}

extension FriendListView: UITableViewDelegate {
    
}

extension FriendListView: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
}
