//
//  Post.swift
//  FirstManualViperApp
//
//  Created by MisnikovRoman on 02/12/2018.
//  Copyright © 2018 MisnikovRoman. All rights reserved.
//

import Foundation

typealias Posts = [PostElement]

struct PostElement: Decodable {
    let user, id: Int
    let title, body: String
}
