//
//  NetworkManager.swift
//  AlamofireNetworking
//
//  Created by Nikita on 01.09.2022.
//

import Foundation
import Alamofire

class NetworkManager {
    
    enum APIs: String {
        case posts
        case users
        case comments
        case albums
        case photos
    }
    
    private let baseURL = "https://jsonplaceholder.typicode.com/"
    
    // MARK: - User -
    func getAllUsers(_ complitionHandler: @escaping ([User]) -> Void) {
        let url = baseURL + APIs.users.rawValue
        AF.request(url)
            .validate(statusCode: 200..<300)
            .validate(contentType: ["application/json"])
            .responseDecodable(of: [User].self) { response in
                switch response.result {
                case .success:
                    complitionHandler(response.value ?? [])
                case let .failure(error):
                    print("Error in getAllUsers: \(error)")
                }
        }
    }
    
    // MARK: - Post -
    func getAllPosts(_ complitionHandler: @escaping ([Post]) -> Void) {
        let url = baseURL + APIs.posts.rawValue
        AF.request(url)
            .validate(statusCode: 200..<300)
            .validate(contentType: ["application/json"])
            .responseDecodable(of: [Post].self) { response in
                switch response.result {
                case .success:
                    complitionHandler(response.value ?? [])
                case let .failure(error):
                    print("Error in getAllPosts: \(error)")
                }
        }
    }
    
    // MARK: - Comment -
    func getAllComments(_ complitionHandler: @escaping ([Comment]) -> Void) {
        let url = baseURL + APIs.comments.rawValue
        AF.request(url)
            .validate(statusCode: 200..<300)
            .validate(contentType: ["application/json"])
            .responseDecodable(of: [Comment].self) { response in
                switch response.result {
                case .success:
                    complitionHandler(response.value ?? [])
                case let .failure(error):
                    print("Error in getAllComents: \(error)")
                }
        }
    }
    
    // MARK: - Album -
    func getAllAlbums(_ complitionHandler: @escaping ([Album]) -> Void) {
        let url = baseURL + APIs.albums.rawValue
        AF.request(url)
            .validate(statusCode: 200..<300)
            .validate(contentType: ["application/json"])
            .responseDecodable(of: [Album].self) { response in
                switch response.result {
                case .success:
                    complitionHandler(response.value ?? [])
                case let .failure(error):
                    print("Error in getAllAlbums: \(error)")
                }
        }
    }
    
    // MARK: - Photo -
    func getAllPhotos(_ complitionHandler: @escaping ([Photo]) -> Void) {
        let url = baseURL + APIs.photos.rawValue
        AF.request(url)
            .validate(statusCode: 200..<300)
            .validate(contentType: ["application/json"])
            .responseDecodable(of: [Photo].self) { response in
                switch response.result {
                case .success:
                    complitionHandler(response.value ?? [])
                case let .failure(error):
                    print("Error in getAllPhotos: \(error)")
                }
        }
    }
}
