//
//  IFriendListPresenter.swift
//  FirstManualViperApp
//
//  Created by MisnikovRoman on 02/12/2018.
//  Copyright © 2018 MisnikovRoman. All rights reserved.
//

import Foundation

protocol IFriendListPresenter: class {
    var view: IFriendListView? { get set }
    var interactor: IFriendListInteractor? { get set }
    var router: IFriendListRouter? { get set }
    func viewDidLoad()
    func friendListDidFetch(_ friendList: [Friend])
}
