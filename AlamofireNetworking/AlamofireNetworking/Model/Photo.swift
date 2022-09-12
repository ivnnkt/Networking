//
//  Photo.swift
//  AlamofireNetworking
//
//  Created by Nikita on 13.09.2022.
//

import Foundation

// MARK: - Photo
class Photo: Codable {
    let albumId, id: Int
    let title: String
    let url, thumbnailUrl: String

    init(albumId: Int, id: Int, title: String, url: String, thumbnailUrl: String) {
        self.albumId = albumId
        self.id = id
        self.title = title
        self.url = url
        self.thumbnailUrl = thumbnailUrl
    }
}
