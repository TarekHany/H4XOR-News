//
//  PostData.swift
//  H4XOR
//
//  Created by Tarek Hany on 9/27/20.
//  Copyright © 2020 Tarek Hany. All rights reserved.
//

import Foundation

struct Results: Decodable {
    let hits: [Post]
}
struct Post: Decodable, Identifiable {
    var id: String {
        return objectID
    }
    let objectID: String
    let points: Int
    let title: String
    let url: String?
}
