//
//  ViewController.swift
//  AlamofireNetworking
//
//  Created by Nikita on 01.09.2022.
//

import UIKit

class PostsViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView! {
        didSet {
            tableView.delegate = self
            tableView.dataSource = self
            
            let nib = UINib(nibName: "PostTableViewCell", bundle: nil)
            tableView.register(nib, forCellReuseIdentifier: "PostCellId")
        }
    }
    
    var posts: [Post] = [] {
        didSet {
            tableView.reloadData()
        }
    }
    
    let networkManager = NetworkManager()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        networkManager.getAllPosts { [weak self] (posts) in
            DispatchQueue.main.async {
                self?.posts = posts
            }
        }
    }
}

extension PostsViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return posts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PostCellId", for: indexPath) as! PostTableViewCell
        cell.configure(posts[indexPath.row])
        return cell
    }
}

