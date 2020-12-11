//
//  NewsList.swift
//  YCombinator News Reader
//
//  Created by Sandun Liyanage on 12/11/20.
//

import Foundation

struct NewsList: Codable {
    var hits: [NewsItem]
}

struct NewsItem: Codable, Identifiable {
    var id: String {
        return objectID
    }
    
    let objectID: String
    let url: String
    let title: String
    let points: Int
}
