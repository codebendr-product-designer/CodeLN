//
//  EndPoint.swift
//  Feed
//
//  Created by codebendr on 24/09/2019.
//  Copyright © 2019 just pixel. All rights reserved.
//

import Foundation

struct EndPoint {
    
    func getFeed() {
        var urlComponent = URLComponents()
        urlComponent.host = "https://jsonplaceholder.typicode.com/photos"
    }
}
