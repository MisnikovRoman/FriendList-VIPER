//
//  FriendListPresenter.swift
//  FirstManualViperApp
//
//  Created by MisnikovRoman on 02/12/2018.
//  Copyright © 2018 MisnikovRoman. All rights reserved.
//

import Foundation

class FriendListPresenter: IFriendListPresenter {
    
    weak var view: IFriendListView?
    var interactor: IFriendListInteractor?
    var router: IFriendListRouter?
    
    func viewDidLoad() {
        interactor?.fetchFriends()
    }
    
    func friendListDidFetch(_ friendList: [Friend]) {
        view?.show(friendList: friendList)
    }
}
