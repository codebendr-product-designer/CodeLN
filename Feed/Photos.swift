//
//  Photos.swift
//  Feed
//
//  Created by codebendr on 24/09/2019.
//  Copyright © 2019 just pixel. All rights reserved.
//

import Foundation

/*
 {
 albumId: 1,
 id: 1,
 title: "accusamus beatae ad facilis cum similique qui sunt",
 url: "https://via.placeholder.com/600/92c952",
 thumbnailUrl: "https://via.placeholder.com/150/92c952"
 },
 */

struct Photos: Decodable {
    let albumId: Int
    let id: Int
    let title: String
    let url: String
    let thumbnailUrl: String 
    
}
