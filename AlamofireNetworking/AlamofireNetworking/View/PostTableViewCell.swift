//
//  PostTableViewCell.swift
//  AlamofireNetworking
//
//  Created by Nikita on 02.09.2022.
//

import UIKit

class PostTableViewCell: UITableViewCell {

    @IBOutlet weak var postCellView: UIView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var bodyLabel: UILabel!
    
    func configure(_ post: Post) {
        DispatchQueue.main.async {
            self.postCellView.layer.cornerRadius = 10
            self.postCellView.layer.borderWidth = 5
            self.postCellView.layer.borderColor = UIColor.white.cgColor
//            self.postCellView.layer.
            
            self.titleLabel.text = post.title.capitalized
            self.bodyLabel.text = post.body
        }
    }
}
