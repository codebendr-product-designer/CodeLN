//
//  TableViewCell.swift
//  Feed
//
//  Created by codebendr on 24/09/2019.
//  Copyright © 2019 just pixel. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var label: UILabel!
    
    override func prepareForReuse() {
        img.image = .none
        label.text = .none
    }

    var photo: Photos? {
        didSet {
            if let photo = photo {
                img.image = UIImage(contentsOfFile: photo.thumbnailUrl)
                label.text = photo.title
            }
        }
    }

}
