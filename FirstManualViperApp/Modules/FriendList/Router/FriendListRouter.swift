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
        
        let presenter: IFriendListPresenter = FriendListPresenter()
        let interactor = FriendListInteractor()
        interactor.presenter = presenter
        
        let view = FriendListView()
        view.presenter = presenter
        
        presenter.view = view
        presenter.interactor = interactor
        presenter.router = FriendListRouter()
        
        return view
    }
    
    func pushToFriendDetails() {
        // some code will later
    }
}
