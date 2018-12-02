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
    
    override func viewDidLoad() {
        title = "Список контактов"
        view.backgroundColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
    }
}

extension FriendListView: IFriendListView {
    
}
