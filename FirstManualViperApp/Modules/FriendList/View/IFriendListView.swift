//
//  IFriendListView.swift
//  FirstManualViperApp
//
//  Created by MisnikovRoman on 02/12/2018.
//  Copyright © 2018 MisnikovRoman. All rights reserved.
//

import Foundation

protocol IFriendListView: class {
    var presenter: IFriendListPresenter? { get set }
    func show(friendList: [FriendViewData])
}
