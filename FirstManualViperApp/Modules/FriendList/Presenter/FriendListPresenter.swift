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
        let friendsToView = prepareFriendsModelToView(friends: friendList)
        view?.show(friendList: friendsToView)
    }
    
    private func prepareFriendsModelToView(friends: Friends) -> [FriendViewData] {
        let friendsViewData = friends.map({ (friend) -> FriendViewData in
            let name = friend.name
            let stringNumber = "+7 \(friend.number - 70000000000)"
            return FriendViewData(name: name, number: stringNumber)
        })
        return friendsViewData
    }
}
