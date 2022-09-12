//
//  Comment.swift
//  AlamofireNetworking
//
//  Created by Nikita on 12.09.2022.
//

import Foundation

// MARK: - Comment
struct Comment: Codable {
    let postId, id: Int
    let name, email, body: String
}
