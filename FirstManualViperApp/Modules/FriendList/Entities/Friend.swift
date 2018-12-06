//
//  Friend.swift
//  FirstManualViperApp
//
//  Created by MisnikovRoman on 02/12/2018.
//  Copyright © 2018 MisnikovRoman. All rights reserved.
//

import Foundation

typealias Friends = [Friend]

struct Friend: Decodable {
    let name: String
    let number: Int
}

struct FriendViewData {
    let name: String
    let number: String
}
