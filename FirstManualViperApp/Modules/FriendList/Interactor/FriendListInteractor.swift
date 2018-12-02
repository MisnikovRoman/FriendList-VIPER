//
//  FriendListInteractor.swift
//  FirstManualViperApp
//
//  Created by MisnikovRoman on 02/12/2018.
//  Copyright © 2018 MisnikovRoman. All rights reserved.
//

import Foundation

class FriendListInteractor: IFriendListInteractor {
    var presenter: IFriendListPresenter?
    
    func fetchFriends() {
        print("Interactor is loading friends list...")
    }
}
