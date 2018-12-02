//
//  FriendListInteractor.swift
//  FirstManualViperApp
//
//  Created by MisnikovRoman on 02/12/2018.
//  Copyright © 2018 MisnikovRoman. All rights reserved.
//

import Foundation

class FriendListInteractor: IFriendListInteractor {
    weak var presenter: IFriendListPresenter?
    
    func fetchFriends() {
        print("Interactor is loading friends list...")
        
        guard let stringUrl = Bundle.main.path(forResource: "friends", ofType: "json") else { return }
        let url = URL(fileURLWithPath: stringUrl)
        guard let data = try? Data(contentsOf: url) else { return }
        do {
            let friendList = try JSONDecoder().decode(Friends.self, from: data)
            print(friendList)
            presenter?.friendListDidFetch(friendList)
        } catch {
            print("❗️", error)
        }
    }
}
