//
//  NetworkManager.swift
//  AlamofireNetworking
//
//  Created by Nikita on 01.09.2022.
//

import Foundation
import Alamofire

class NetworkManager {
    
    enum HTTPMethod: String {
        case GET
        case POST
        case PUT
        case DELETE
    }
    
    enum APIs: String {
        case posts
        case users
        case comments
    }
    
    private let baseURL = "https://jsonplaceholder.typicode.com/"
    
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
}


