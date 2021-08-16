//
//  Review.swift
//  aurelion-movies
//
//  Created by mehdi on 16/08/2021.
//

import Foundation

struct ReviewResponse : Codable{
    var results: [Review]
}

struct Review: Codable, Identifiable {
    var id: Int?
    var author: String?
    var content: String?
}
