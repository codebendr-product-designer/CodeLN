//
//  DetailViewController.swift
//  Feed
//
//  Created by codebendr on 24/09/2019.
//  Copyright © 2019 just pixel. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var label: UILabel!
    
    var photo: Photos?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let photo = photo {
          //  let url = URL(string: photo.url)
            img.image = UIImage(contentsOfFile: photo.url)
            label.text = photo.title
        }
        
    }
    
}
