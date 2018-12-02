//
//  IFriendListView.swift
//  FirstManualViperApp
//
//  Created by MisnikovRoman on 02/12/2018.
//  Copyright © 2018 MisnikovRoman. All rights reserved.
//

import Foundation

protocol IFriendListView: NSObjectProtocol {
    var presenter: IFriendListPresenter? { get set }
}
