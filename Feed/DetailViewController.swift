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
            
            Photos.download(url: (URL(string:photo.url) ?? nil)!) {
                image, error in
                
                if error == nil {
                    DispatchQueue.main.async {
                        self.img.image = image
                    }
                }
            }
            label.text = photo.title
        }
        
    }
    
}


