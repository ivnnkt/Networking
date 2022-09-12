//
//  Post.swift
//  AlamofireNetworking
//
//  Created by Nikita on 01.09.2022.
//

import Foundation

// MARK: - Post
class Post: Codable {
    var userId: Int
    var id: Int
    var title: String
    var body: String
    
    init(userId: Int, id: Int, title: String, body: String) {
        self.userId = userId
        self.id = 0
        self.title = title
        self.body = body
    }
}
