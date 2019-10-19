//
//  Article.swift
//  NewsMVVM
//
//  Created by Matthew Manion on 10/19/19.
//  Copyright © 2019 Matthew Manion. All rights reserved.
//

import Foundation

struct ArtiicleList: Decodable {
    let articles: [Article]
}

struct Article: Decodable {
    let title: String
    let description: String
}
