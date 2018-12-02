//
//  IFriendListRouter.swift
//  FirstManualViperApp
//
//  Created by MisnikovRoman on 02/12/2018.
//  Copyright © 2018 MisnikovRoman. All rights reserved.
//

import UIKit

protocol IFriendListRouter {
    static func createModule() -> IFriendListView & UIViewController
    func pushToFriendDetails()
}
