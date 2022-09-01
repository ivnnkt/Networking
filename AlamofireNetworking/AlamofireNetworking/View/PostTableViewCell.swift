//
//  PostTableViewCell.swift
//  AlamofireNetworking
//
//  Created by Nikita on 02.09.2022.
//

import UIKit

class PostTableViewCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var bodyLabel: UILabel!
    
    func configure(_ post: Post) {
        titleLabel.text = post.title.capitalized
        bodyLabel.text = post.body
    }
}
