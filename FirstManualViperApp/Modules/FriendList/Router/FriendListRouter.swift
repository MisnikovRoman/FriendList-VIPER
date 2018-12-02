//
//  FriendListRouter.swift
//  FirstManualViperApp
//
//  Created by MisnikovRoman on 02/12/2018.
//  Copyright © 2018 MisnikovRoman. All rights reserved.
//

import UIKit

class FriendListRouter: IFriendListRouter {
    static func createModule() -> UIViewController & IFriendListView {
        
        var presenter: IFriendListPresenter = FriendListPresenter()
        presenter.interactor = FriendListInteractor()
        presenter.router = FriendListRouter()
        
        let view = FriendListView()
        view.presenter = presenter
        
        presenter.view = view
        
        return view
    }
    
    func pushToFriendDetails() {
        // some code will later
    }
}
