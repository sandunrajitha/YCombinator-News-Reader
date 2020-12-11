//
//  NewsList.swift
//  YCombinator News Reader
//
//  Created by Sandun Liyanage on 12/11/20.
//

import Foundation

struct NewsList: Codable {
    var hits: [Hit]
}

struct Hit: Codable {
    var title: String
    var points: Int
}
