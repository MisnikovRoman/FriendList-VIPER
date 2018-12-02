//
//  IFriendListInteractor.swift
//  FirstManualViperApp
//
//  Created by MisnikovRoman on 02/12/2018.
//  Copyright © 2018 MisnikovRoman. All rights reserved.
//

import Foundation

protocol IFriendListInteractor: class {
    var presenter: IFriendListPresenter? { get set }
    func fetchFriends()
}
